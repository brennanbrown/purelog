# Jekyll Theme Gem Conversion Guide (Purelog Playbook)

This guide standardizes how to extract an existing Jekyll site into a reusable theme gem. It’s based on the Purelog theme gem work and is designed to be repeatable for other themes.

## Goals

- Create a portable, reusable theme gem with minimal configuration.
- Extract layouts, includes, and assets cleanly.
- Ensure path portability via `relative_url`.
- Provide a local sandbox for development.
- Ship docs, license, and a versioned gem.

---

## 1) Prepare the repository

- Keep your original site at repo root.
- Add a dedicated `theme/` directory that will contain the gem.
- Add a separate `sandbox/` Jekyll site for local testing.

Recommended top-level structure:

```
/ (repo root)
  _config.yml
  assets/
  _layouts/
  _includes/
  ...
  theme/           # the theme gem lives here
  sandbox/         # a test site that uses the theme
  docs/            # documentation, changelog, etc.
```

Exclude `theme/` and `sandbox/` from your main site build via root `_config.yml` if needed.

---

## 2) Create the theme gem scaffold

Inside `theme/`:

- `_layouts/` — copy your theme layouts (e.g., `default.html`, `home.html`, `post.html`, collections).
- `_includes/` — copy shared partials (e.g., `head.html`, `sidebar.html`, `footer.html`).
- `assets/` — copy CSS, JS, images (if any). Keep paths flat and predictable.
- `assets/css/purelog.css` — a simple import file to centralize stylesheet loading.
- `lib/purelog.rb` — Ruby entrypoint that defines the module and hooks Jekyll.
- `lib/purelog/version.rb` — version constant.
- `purelog.gemspec` — gem specification.
- `README.md` and `LICENSE` — docs and licensing for gem consumers.

Example `theme/lib/purelog.rb`:

```ruby
# frozen_string_literal: true

module Purelog
  class << self
    def load
      # Place for future hooks or generators
    end
  end
end

Purelog.load
```

Example `theme/lib/purelog/version.rb`:

```ruby
# frozen_string_literal: true

module Purelog
  VERSION = "0.1.0"
end
```

Example `theme/purelog.gemspec` (key parts):

```ruby
Gem::Specification.new do |spec|
  spec.name          = "purelog"
  spec.version       = File.read(File.expand_path("lib/purelog/version.rb", __dir__))
                         .match(/VERSION\s*=\s*"([^"]+)"/)[1]
  spec.summary       = "Purelog Jekyll theme"
  spec.description   = "A reusable Jekyll theme extracted from a site."
  spec.homepage      = "https://github.com/your/repo"
  spec.license       = "MIT"

  spec.files = Dir.chdir(__dir__) do
    Dir["lib/**/*", "_layouts/**/*", "_includes/**/*", "_sass/**/*", "assets/**/*", "README*", "LICENSE*"].select { |f| File.file?(f) }
  end

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => spec.homepage
  }
end
```

Notes:
- Pin Jekyll to `~> 4.3` to silence warnings and follow semver.
- Include all theme files in `spec.files`.
- Keep imports in `_includes/head.html` loading theme assets with `relative_url`.

---

## 3) Ensure path portability and accessibility

- Use `{{ "/path" | relative_url }}` for all internal links and assets.
- Keep accessibility improvements (e.g., `role="search"`, proper labels) in includes.
- Load CDN assets with SRI and `crossorigin` when applicable.

Example (`theme/_includes/head.html` extract):

```html
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/2.0.3/pure-min.css" integrity="..." crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/pure/2.0.3/grids-responsive-min.css" integrity="..." crossorigin="anonymous">
<link rel="stylesheet" href="{{ "/assets/main.css" | relative_url }}">
<link rel="stylesheet" href="{{ "/assets/code.css" | relative_url }}">
```

Analytics (optional):
- Create `theme/_includes/analytics.html` and include it conditionally in `head.html` only when `JEKYLL_ENV=production` and `site.google_analytics` is set. Prefer IP anonymization.

---

## 4) Assets strategy (CSS/JS)

- Copy actual CSS/JS into `theme/assets/` (avoid placeholders).
- Provide a single CSS entrypoint: `theme/assets/css/purelog.css`:

```css
/* Theme entrypoint */
@import url("../main.css");
@import url("../code.css");
```

- If you previously had an SCSS entrypoint, either:
  - Keep it but without front matter/imports so Jekyll won’t compile it (avoid conflicts), or
  - Remove it entirely in favor of the CSS import entrypoint.

---

## 5) Create a sandbox site for local testing

In `sandbox/`:

- `Gemfile` referencing Jekyll, plugins, and the theme gem (path or local build).
- `_config.yml` with required plugins and theme usage.
- Example content: `index.md`, `about.md`, `_posts/`.

Example `sandbox/_config.yml`:

```yaml
title: Theme Sandbox
baseurl: ""
url: ""

theme: purelog

plugins:
  - jekyll-feed
  - jekyll-seo-tag
  - jekyll-paginate-v2
  - jekyll-sitemap

# Collections (optional)
collections:
  notes:
    output: true
    permalink: /notes/:title

# jekyll-paginate-v2
pagination:
  enabled: true
  per_page: 5
  permalink: "/page/:num/"
  sort_field: "date"
  sort_reverse: true
```

Home page with pagination (`sandbox/index.md`):

```markdown
---
layout: home
title: Home
pagination:
  enabled: true
---
```

Commands:
- Install: `bundle install`
- Build: `bundle exec jekyll build`
- Serve: `bundle exec jekyll serve --detach --port 4001`

---

## 6) Versioning, changelog, and docs

- Bump version in `theme/lib/purelog/version.rb`.
- Maintain `docs/CHANGELOG.md` using a simple Keep a Changelog style.
- Add `theme/README.md` for consumers with install/config instructions and dependencies.
- Include `theme/LICENSE` (copy from repo root if MIT or similar).

---

## 7) Build and verify the gem

From `theme/` directory:

```bash
gem build purelog.gemspec
# => Successfully built RubyGem: purelog-0.1.0.gem
```

Common issues:
- Run from `theme/` so `spec.files` paths resolve.
- Ensure `assets/**/*`, `_layouts/**/*`, `_includes/**/*`, and `lib/**/*` exist.

---

## 8) Release checklist

- [ ] All internal links and assets use `relative_url`.
- [ ] `theme/_includes/head.html` loads theme CSS/JS via `relative_url`.
- [ ] `theme/assets/` contains real CSS/JS contents (no placeholders).
- [ ] Single CSS entrypoint present (`assets/css/purelog.css`).
- [ ] SCSS entrypoint disabled or removed to avoid conflicts.
- [ ] `theme/purelog.gemspec` pins `jekyll` to `~> 4.3` and includes all files.
- [ ] `theme/lib/purelog/version.rb` updated (e.g., `0.1.0`).
- [ ] `theme/README.md` and `theme/LICENSE` present.
- [ ] `sandbox/` builds and serves correctly.
- [ ] `docs/CHANGELOG.md` updated with release notes.

---

## 9) Optional enhancements

- CI workflow to build the sandbox site for checks.
- Netlify/Pages deploy for a demo site.
- Additional accessibility passes and Lighthouse testing.
- Config defaults section in README for minimal setup.

---

## 10) Snippets you can reuse

Sandbox Gemfile (local path install during development):

```ruby
source "https://rubygems.org"

gem "jekyll", "~> 4.3"

group :jekyll_plugins do
  gem "jekyll-feed"
  gem "jekyll-seo-tag"
  gem "jekyll-paginate-v2"
  gem "jekyll-sitemap"
end

# Use local theme gem
gem "purelog", path: "../theme"
```

Including search (if used):

```html
<!-- In an include or layout -->
<script src="{{ "/assets/simple-jekyll-search.js" | relative_url }}"></script>
<script>
  SimpleJekyllSearch({
    searchInput: document.getElementById('search-input'),
    resultsContainer: document.getElementById('results-container'),
    json: '{{ "/search.json" | relative_url }}'
  })
</script>
```

---

## Conclusion

Follow this playbook to convert any existing Jekyll theme into a clean, portable gem with a consistent structure, reliable builds, and a smooth developer experience. Adapt naming from "Purelog" to your theme as needed, and keep the sandbox and docs in sync with new features.
