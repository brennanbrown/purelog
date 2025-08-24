# Changelog

All notable changes to this project will be documented in this file.

This project adheres to Keep a Changelog principles (lightweight) and uses semver-like tags when applicable.

## [Unreleased]

## [1.1.0] - 2025-08-24
### Added
- Google Analytics (GA4) support via `/_includes/analytics.html` with IP anonymization and page_path.
- Conditional GA load in `/_includes/head.html` gated by `JEKYLL_ENV=production` and presence of `site.google_analytics`.

### Changed
- Portability improvements across internal links using Jekyll's `relative_url` filter:
  - `/_layouts/default.html` header home link.
  - `/_includes/footer.html` Home link.
  - `/_layouts/notes.html`, `/_includes/journal-data.html`, `/_includes/post-data.html` tag links now use `{{ "/tags/#" | append: tag | relative_url }}`.
  - `404.html` Home button link.
- Search component hardening in `/_includes/search.html`:
  - Load script via `{{ "/assets/simple-jekyll-search.js" | relative_url }}`.
  - Search JSON path now `{{ '/search.json' | relative_url }}`.
  - Added `role="search"` to container for a11y.
  - Fixed invalid anchor attribute (now `style='color:#555555;'`).
- Search index `search.json` now emits relative URLs for posts, journals, and notes.
- Author image path handling: `/_includes/author.html` now filters `site.author_pic` through `relative_url`.
- CSS/Assets in `/_includes/head.html`:
  - Pure.css CDN links updated with SRI and `crossorigin`.
  - Kept local styles via `relative_url`.

### Documentation
- This changelog created at `docs/CHANGELOG.md`.

### Build
- Verified `bundle exec jekyll build` succeeds after changes.

## [Historical]
- Earlier history prior to this changelog lives in Git commits.

---

[Unreleased]: https://github.com/brennanbrown/purelog/compare/v1.1.0...HEAD
[1.1.0]: https://github.com/brennanbrown/purelog/releases/tag/v1.1.0
