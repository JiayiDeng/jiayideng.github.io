#!/usr/bin/env ruby
# frozen_string_literal: true

require "cgi"
require "pathname"

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
    "/cv/",
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
end

if FAILURES.any?
  warn "Generated-site check failed:"
  FAILURES.each { |failure| warn "- #{failure}" }
  exit 1
end

puts "Generated-site check passed."
