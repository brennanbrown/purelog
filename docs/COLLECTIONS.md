# Custom Collections and Auto-generated Pages

This theme supports multiple custom collections beyond posts: `notes` and `journals`.

## Collections defined in `_config.yml`

```
collections:
  pages:
    output: true
    permalink: /:title
  notes:
    output: true
    permalink: /notes/:title
  journals:
    output: true
    permalink: /journals/:title
```

- Notes use the layout `post` by default and live in `_notes/`.
- Journals use the layout `journal-entry` by default and live in `_journals/`.

Defaults are set under `defaults:` so you don’t need to specify layout per-file.

## Creating a new collection

1. Add an entry under `collections:` in `_config.yml`:
   ```yml
   collections:
     bookmarks:
       output: true
       permalink: /bookmarks/:title
   ```
2. Create a directory at the repo root: `_bookmarks/`.
3. Create a layout (optional) at `_layouts/bookmark.html`.
4. Add content markdown files in `_bookmarks/` with front matter:
   ```yml
   ---
   layout: bookmark
   title: A Great Link
   tags: [reading]
   ---
   Body content here.
   ```

## Auto-generated pages

- Tags and categories pages are handled via templates in `_pages/`.
- Archives are generated in `_pages/archive.md` and use list templates to include all collections.

## Navigation and listing

- Add links in `_includes/links.html` or `_includes/sidebar.html`.
- To list a collection anywhere:
  ```liquid
  {% assign items = site.bookmarks %}
  {% for item in items %}
    <a href="{{ item.url | relative_url }}">{{ item.title }}</a>
  {% endfor %}
  ```

## Search

`search.json` already indexes `posts`, `notes`, and `journals`.
To include a new collection, add a new loop in `search.json` emitting `title`, `url`, and `content`.
