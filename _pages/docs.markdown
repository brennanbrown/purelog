---
layout: page
title: Docs
permalink: /documentation/
---

## Installation

### Prerequisites

Jekyll requires the following:

- Ruby version **2.5.0** or higher
- RubyGems
- GCC and Make

See [Requirements](https://jekyllrb.com/docs/installation/#requirements) for guides and details.

### Instructions

1. Install all [prerequisites](https://jekyllrb.com/docs/installation/).
2. Install the jekyll and bundler [gems](https://jekyllrb.com/docs/ruby-101/#gems).

```
gem install jekyll bundler
```

3. Clone this repository.

```
git clone https://github.com/brennanbrown/watery.git
```

4. Change into your new directory.

```
cd watery
```

5. Install gems from the `Gemfile`.

```
bundle install
```

5. Build the site and make it available on a local server.

```
bundle exec jekyll serve
```

6. Browse to [http://localhost:4000](http://localhost:4000)

If you encounter any errors during this process, check that you have installed all the prerequisites in [Requirements](https://jekyllrb.com/docs/installation/#requirements).

If you still have issues, see [Troubleshooting](https://jekyllrb.com/docs/troubleshooting/#configuration-problems).

## Getting Started

Once you have Jekyll up-and-running, there are only a few steps needed to make this theme your own:

1. Fill out the `_BLANK_config.yml` configuration file and replace the current `_config.yml`
2. Remove the `example_posts` folder in `_posts` and start writing your own!
3. Modify or remove the pages in `_pages` to however you see fit.
4. _(Optional)_ Modify or remove this `README.md` with information about your own project or blog.
5. _(Optional)_ Modify the CSS files in the `assets` folder to customize the site.

<!-- ROADMAP -->

## Roadmap

There are several features that I'm still planning to create and integrate, including:

- Create a [Theme Gem](https://jekyllrb.com/docs/themes/#publishing-your-theme)
- Add easy and automatic buttons to ["Deploy to Neflify"](https://docs.netlify.com/site-deploys/create-deploys/#deploy-to-netlify-button), Heroku, etc.
- Add Travis continious integration checks
- Add additional documentation for creating custom collections and auto generated pages

See the [open issues](https://github.com/othneildrew/Best-README-Template/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->

## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- LICENSE -->

## License

Distributed under the MIT License. You can use this project however you see fit without needing to give attribution.

See `LICENSE` for more information.
