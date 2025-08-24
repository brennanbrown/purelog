# Using Purelog as a Jekyll Theme (Preview)

This repository currently hosts a standalone Jekyll site. A theme gem scaffold is provided under `theme/` as a work-in-progress and is excluded from the site build.

## Status

- The theme gem is not yet published.
- Directory `theme/` contains early scaffolding you can extend into a distributable gem.

## Intended structure

```
theme/
  purelog.gemspec
  lib/
    purelog.rb
    purelog/version.rb
  assets/
    css/
    js/
  _layouts/
  _includes/
  _sass/
```

## Local development approach

- Keep developing the site in this repo as usual.
- As you generalize layouts/includes for reuse, copy them into `theme/` and adapt paths to work as a theme.
- When ready, publish the gem and reference it in another project via `theme: purelog` in `_config.yml`.

## Next steps (planned)

- Extract shared assets, layouts, and includes into `theme/`.
- Add gemspec metadata and bundle config to build the gem.
- Document theme usage and version compatibility.
