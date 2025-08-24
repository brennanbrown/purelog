# Deploying Purelog

This project works well on Netlify and GitHub Pages.

## Netlify

1. Click the Deploy to Netlify button in the README, or connect your repo in Netlify.
2. Build command:
   ```sh
   bundle install && JEKYLL_ENV=production bundle exec jekyll build
   ```
3. Publish directory: `_site`
4. Environment variables (optional):
   - `JEKYLL_ENV=production`
   - `RUBY_VERSION=3.3`

Netlify will infer `site.url` automatically on production URLs if configured.

## GitHub Pages (Actions)

This repo includes a workflow at `.github/workflows/gh-pages.yml` which:
- Installs Ruby 3.3 and dependencies
- Builds with `JEKYLL_ENV=production`
- Deploys the `_site` folder to GitHub Pages

Enable Pages for the repo and set Source to GitHub Actions.

## Local development

```sh
bundle install
bundle exec jekyll serve
```

Open http://localhost:4000 and iterate.
