# Purelog Jekyll Theme (Gem)

A reusable Jekyll theme extracted from the Purelog site, featuring a responsive layout built with Pure.css, accessibility-minded search, and portable links.

## Usage (local path)

In a Jekyll site, add to your `Gemfile`:

```ruby
gem "purelog", path: "../theme"
```

And in `_config.yml`:

```yml
theme: purelog
```

Ensure your site has the required plugins listed in your main Gemfile and `_config.yml` (jekyll-seo-tag, jekyll-feed, jekyll-paginate-v2, jekyll-sitemap).

## Assets

The theme provides `/assets/main.css`, `/assets/code.css`, and `/assets/simple-jekyll-search.js`.

## Notes & Journals (optional)

If you use the optional `notes` and `journals` collections, define them in your site's `_config.yml`:

```yml
collections:
  notes:
    output: true
    permalink: /notes/:title
  journals:
    output: true
    permalink: /journals/:title
```

## Google Analytics

Set `google_analytics: G-XXXXXXXXXX` and build with `JEKYLL_ENV=production`.

## License

MIT
