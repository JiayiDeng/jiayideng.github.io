#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "date"
require "pathname"
require "yaml"

ROOT = Pathname.new(__dir__).join("..").expand_path
SITE = ROOT.join("_site")
FAILURES = []

def fail_check(message)
  FAILURES << message
end

def route_exists?(target)
  clean = CGI.unescape(target.split("#", 2).first.to_s.split("?", 2).first.to_s)
  return SITE.join("index.html").exist? if clean.empty? || clean == "/"

  without_slash = clean.sub(%r{\A/+}, "")
  SITE.join(without_slash).exist? ||
    SITE.join(without_slash, "index.html").exist? ||
    SITE.join("#{without_slash}.html").exist?
end

def html_for(route)
  clean = route.sub(%r{\A/+}, "")
  SITE.join(clean, "index.html").read
end

def assert_in_order(label, html, values)
  positions = values.map do |value|
    escaped = CGI.escapeHTML(value)
    index = html.index(escaped) || html.index(value)
    fail_check("#{label} missing expected title: #{value}") if index.nil?
    index
  end
  return if positions.any?(&:nil?)

  positions.each_cons(2) do |before, after|
    fail_check("#{label} is not ordered newest to oldest.") if before > after
  end
end

unless SITE.exist?
  fail_check("_site does not exist. Run the Jekyll build first.")
else
  html_files = SITE.glob("**/*.html")
  link_pattern = /\s(?:href|src)=["']([^"']+)["']/i
  skip_schemes = /\A(?:https?:|mailto:|tel:|data:|javascript:|#)/i

  html_files.each do |file|
    html = file.read
    html.scan(link_pattern).flatten.each do |target|
      next if target.match?(skip_schemes) || target.start_with?("//")
      next unless target.start_with?("/")

      fail_check("#{file.relative_path_from(SITE)} links to missing local target #{target}") unless route_exists?(target)
    end
  end

  required_routes = [
    "/",
    "/research/",
    "/projects/",
    "/projects/human-ai-fairness-audit/",
    "/resume/",
    "/contact/",
    "/publications/",
    "/talks/",
    "/cv/",
    "/publications/equating/",
    "/publications/2021-paper/",
    "/talks/2022-04-09",
    "/files/Jiayi_Deng_Resume_2026.pdf"
  ]

  required_routes.each do |route|
    fail_check("Required route or file missing: #{route}") unless route_exists?(route)
  end

  home = SITE.join("index.html").read
  resume = SITE.join("resume/index.html").read
  case_study = SITE.join("projects/human-ai-fairness-audit/index.html").read

  { "home" => home, "resume" => resume }.each do |label, html|
    unless html.include?("/files/Jiayi_Deng_Resume_2026.pdf")
      fail_check("#{label} page does not link to the 2026 resume PDF.")
    end
  end

  [
    "https://human-ai-fairness-audit-lab.streamlit.app/",
    "https://github.com/JiayiDeng/Human-AI-Fairness-Audit-Lab"
  ].each do |expected|
    unless home.include?(expected) && case_study.include?(expected)
      fail_check("Audit CTA missing from home or case-study page: #{expected}")
    end
  end

  current_profile_pages = [
    "index.html",
    "research/index.html",
    "projects/index.html",
    "projects/human-ai-fairness-audit/index.html",
    "resume/index.html",
    "contact/index.html"
  ]
  stale_current_phrases = [
    "Second-year Phd Student",
    "Second-year PhD student",
    "Ph.D. student",
    "expected 2024",
    "deng0194@umn.edu",
    "personal description",
    "Jiayi Deng CV 2022"
  ]

  current_profile_pages.each do |relative|
    html = SITE.join(relative).read
    stale_current_phrases.each do |phrase|
      fail_check("Stale current-profile phrase found in #{relative}: #{phrase}") if html.include?(phrase)
    end
    fail_check("Current-profile page contains stale location in #{relative}: Minneapolis, MN") if html.include?("Minneapolis, MN")
  end

  scholarship = YAML.load_file(ROOT.join("_data", "scholarship.yml"), permitted_classes: [Date])["entries"]
  public_journals = scholarship.select { |entry| entry["category"] == "journal" && entry["public"] }.sort_by { |entry| entry["sort_date"].to_s }.reverse
  featured_journals = public_journals.select { |entry| entry["featured"] }
  public_software = scholarship.select { |entry| entry["category"] == "software" && entry["public"] }
  public_presentations = scholarship.select { |entry| entry["category"] == "presentation" && entry["public"] }

  publications = html_for("/publications/")
  research = html_for("/research/")
  talks = html_for("/talks/")

  fail_check("/publications/ must use the heading Peer-Reviewed Journal Articles.") unless publications.include?("Peer-Reviewed Journal Articles")
  fail_check("/publications/ must include a Software section.") unless publications.include?(">Software<")
  fail_check("Expected 11 public journal articles, found #{public_journals.length}.") unless public_journals.length == 11
  fail_check("Expected exactly one public software record, found #{public_software.length}.") unless public_software.length == 1
  fail_check("Expected six selected research publications, found #{featured_journals.length}.") unless featured_journals.length == 6

  public_journals.each do |entry|
    fail_check("/publications/ missing journal article: #{entry["title"]}") unless publications.include?(CGI.escapeHTML(entry["title"])) || publications.include?(entry["title"])
  end

  featured_journals.each do |entry|
    fail_check("/research/ missing selected publication: #{entry["title"]}") unless research.include?(CGI.escapeHTML(entry["title"])) || research.include?(entry["title"])
  end

  public_software.each do |entry|
    fail_check("/publications/ missing software record: #{entry["title"]}") unless publications.include?(CGI.escapeHTML(entry["title"])) || publications.include?(entry["title"])
    fail_check("/publications/ missing CRAN package DOI.") unless publications.include?("10.32614/CRAN.package.aberrance")
    fail_check("/publications/ missing CRAN link.") unless publications.include?("https://CRAN.R-project.org/package=aberrance")
  end

  assert_in_order("/publications/", publications, public_journals.map { |entry| entry["title"] })
  assert_in_order("/research/", research, featured_journals.map { |entry| entry["title"] })

  article_title = "aberrance: An R package for detecting aberrant behavior in test data"
  software_title = "aberrance: Detect aberrant behavior in test data"
  article_index = publications.index(article_title)
  software_heading_index = publications.index(">Software<")
  software_index = publications.index(software_title)
  fail_check("aberrance journal article missing from /publications/.") if article_index.nil?
  fail_check("aberrance software record missing from /publications/.") if software_index.nil?
  if article_index && software_heading_index && software_index
    fail_check("aberrance journal article appears in the wrong section.") unless article_index < software_heading_index
    fail_check("aberrance software appears in the wrong section.") unless software_index > software_heading_index
  end

  fail_check("/talks/ missing public presentation records.") if public_presentations.empty?
  public_presentations.each do |entry|
    fail_check("/talks/ missing presentation: #{entry["title"]}") unless talks.include?(CGI.escapeHTML(entry["title"])) || talks.include?(entry["title"])
  end
  fail_check("Submitted 2025 NCME proposal is publicly rendered.") if talks.include?("National Council on Measurement in Education 2025 Annual Meeting")

  generated_html = html_files.map { |file| [file.relative_path_from(SITE).to_s, file.read] }
  forbidden_patterns = [
    "Technical Reports",
    "TECHNICAL REPORTS",
    "Proposal submitted",
    "Manuscript under review",
    "submitted to Asia Pacific Journal of Education",
    "basing effect",
    "?.",
    "Annual Meeting.,",
    "Rios. J. A.",
    "/Users/jiayideng/",
    "href=\"\"",
    "href=''",
    "。"
  ]
  generated_html.each do |relative, html|
    forbidden_patterns.each do |pattern|
      fail_check("Forbidden generated content found in #{relative}: #{pattern}") if html.include?(pattern)
    end
  end
end

if FAILURES.any?
  warn "Generated-site check failed:"
  FAILURES.each { |failure| warn "- #{failure}" }
  exit 1
end

puts "Generated-site check passed."
