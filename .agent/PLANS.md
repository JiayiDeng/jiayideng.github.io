# Execution Plans for Long Website Tasks

For work expected to span multiple files or more than a brief edit, create `.agent/EXEC_PLAN_WEBSITE_REFRESH.md` before implementation.

The execution plan must be a living document containing:

1. Goal and user-visible outcome
2. Current repository state and build/deployment architecture
3. Scope and explicit non-goals
4. Information architecture and content migration map
5. Visual/design implementation plan
6. Accessibility, SEO, performance, and privacy requirements
7. Milestones with files, commands, and observable acceptance criteria
8. Progress log updated during work
9. Decisions and discoveries
10. Exact validation evidence
11. Remaining risks and handoff

Do not mark a milestone complete based only on code inspection. Run the relevant build, generated-site, link, browser, mobile, accessibility, and content checks.

Preserve user content. Before deleting or renaming an existing route, collection, asset, or page, record its replacement or redirect in the plan.

For deployment claims, distinguish:

- implemented locally;
- build verified locally;
- pushed to GitHub;
- GitHub Pages build verified;
- public URL verified.

Never collapse these into one unsupported “deployed” claim.
