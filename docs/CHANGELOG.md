# Changelog

All notable changes to this project will be documented in this file.

This project adheres to Keep a Changelog principles (lightweight) and uses semver-like tags when applicable.

## [Unreleased]
### Added
- CI workflow for build checks at `.github/workflows/ci.yml`.
- Documentation: `docs/COLLECTIONS.md`, `docs/DEPLOYING.md`, and `docs/THEME.md`.
- Deploy to Netlify button in `README.md`.
- `jekyll-sitemap` plugin added to `Gemfile` and `_config.yml`.
- Theme gem preview scaffold under `theme/` (excluded from build).
- Theme gem conversion guide at `docs/THEME_GEM_GUIDE.md`.
- Sandbox sample posts to exercise pagination in `sandbox/_posts/`.

### Changed
- `robots.txt` sitemap now falls back to a relative URL when `site.url` is not set.
- Theme gemspec now pins Jekyll to `~> 4.3` (`theme/purelog.gemspec`).
- Introduced CSS entrypoint `theme/assets/css/purelog.css`; deprecated SCSS entrypoint by removing front matter/imports from `theme/assets/css/purelog.scss` to avoid build conflicts and linter noise.
- Enabled pagination on sandbox home via front matter in `sandbox/index.md`.

## [purelog-theme 0.1.0] - 2025-08-24
Initial pre-release of the standalone Purelog Jekyll theme gem.

### Added
- Theme structure under `theme/` with reusable components:
  - Layouts in `theme/_layouts/` and includes in `theme/_includes/` using `relative_url`.
  - Assets in `theme/assets/` (`main.css`, `code.css`, `simple-jekyll-search.js`).
  - SCSS entrypoint at `theme/assets/css/purelog.scss`.
- Ruby entrypoint and versioning:
  - `theme/lib/purelog.rb`
  - `theme/lib/purelog/version.rb` set to `0.1.0`
- Gemspec and metadata at `theme/purelog.gemspec` including files packaging.
- Theme docs and license copied into `theme/README.md` and `theme/LICENSE`.
- Local sandbox site in `sandbox/` to test the theme via local path gem.

### Changed
- Normalized internal links to use `relative_url` across layouts/includes for baseurl portability.

### Build
- Verified gem builds locally: `purelog-0.1.0.gem`.
- Verified sandbox builds and serves locally with the theme applied.

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
[purelog-theme 0.1.0]: https://github.com/brennanbrown/purelog/releases/tag/purelog-theme-0.1.0
[1.1.0]: https://github.com/brennanbrown/purelog/releases/tag/v1.1.0
