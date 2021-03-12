<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/brennanbrown/purelog">
    <img src="/assets/profile.png" alt="Logo" width="120" height="120">
  </a>

  <h3 align="center">Purelog Theme for Jekyll</h3>

  <p align="center">
    A responsive, well-designed template to help you get started on your next blog or website.
    <br />
    <a href="https://github.com/brennanbrown/purelog"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <strong><a href="https://purelog.netlify.app">View Demo</a></strong>
    ·
    <a href="https://github.com/brennanbrown/purelog/issues">Report Bug</a>
    ·
    <a href="https://github.com/brennanbrown/purelog/issues">Request Feature</a>
  </p>
</p>

<!-- BADGES -->
<p align="center">
<a href="https://app.netlify.com/sites/purelog/deploys"><img src="https://api.netlify.com/api/v1/badges/062e333f-9e9d-440d-9b40-16d11959793d/deploy-status" alt="Netlify Status"></a>
<img alt="GitHub code size in bytes" src="https://img.shields.io/github/languages/code-size/brennanbrown/purelog"> 
<img alt="GitHub repo size" src="https://img.shields.io/github/repo-size/brennanbrown/purelog"> 
<a href="https://github.com/brennanbrown/purelog/search?l=html"><img alt="GitHub top language" src="https://img.shields.io/github/languages/top/brennanbrown/purelog"></a>
<a href="https://github.com/brennanbrown/purelog/issues"><img alt="GitHub issues" src="https://img.shields.io/github/issues/brennanbrown/purelog"></a> 
<a href="https://github.com/brennanbrown/purelog/commits/main"><img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/brennanbrown/purelog"></a>
<a href="https://github.com/brennanbrown/purelog/blob/main/LICENSE"><img alt="GitHub license" src="https://img.shields.io/github/license/brennanbrown/purelog"></a> 
<a href="https://purelog.netlify.app"><img alt="Website" src="https://img.shields.io/website?down_color=red&down_message=Offline%21&label=Status&up_color=darkgreen&up_message=Online%21&url=https%3A%2F%2Fpurelog.netlify.app"></a>
<br />
<a href="https://github.com/brennanbrown?tab=followers"><img alt="GitHub followers" src="https://img.shields.io/github/followers/brennanbrown?label=Follow%20Me%21&style=social"></a>
<a href="https://github.com/brennanbrown/purelog/watchers"><img alt="GitHub watchers" src="https://img.shields.io/github/watchers/brennanbrown/purelog?label=Watch%21&style=social"></a>
<a href="https://github.com/brennanbrown/purelog/stargazers"><img alt="GitHub stars" src="https://img.shields.io/github/stars/brennanbrown/purelog?label=Star%21&style=social"> </a>
<a href="https://github.com/brennanbrown/purelog/network/members"><img alt="GitHub forks"src="https://img.shields.io/github/forks/brennanbrown/purelog?label=Fork%21&style=social"></a>
</p>

<!-- ABOUT THE PROJECT -->

## About The Project

**Purelog** is a responsive, sidebar theme for the popular JAMstack generator Jekyll that only uses the minimal [**Pure.css** framework](https://github.com/pure-css/pure) (hence the name!), while still following the best practices possible for accessibility and search-engine optimization.

I created this after finishing [Watery](https://github.com/brennanbrown/watery) (which this theme is built off of), as a way to add more functionality and design while still remaining as lightweight as possible.

This project is aimed towards those looking for an interesting theme for Jekyll that has features that aren't found commonly elsewhere, specifically having separate sections dedicated towards: blogging, note-taking, and daily journal entries.

![Purelog Screen Shot](https://i.postimg.cc/NfxJvZgx/purelog2.png)

### Features

Here are a few interesting features of this Jekyll theme:

- A fully customizable and empty `_BLANK_config.yml` to make getting up-and-running easy.
- A speedy, on-site search function using [Simply Jekyll Search](https://github.com/christian-fei/Simple-Jekyll-Search).
- Custom collections for different types of material (note-taking, journal writing, etc.)
- An auto-generating archive page that displays all entries from _all_ collections.
- Auto-generating tags and categories pages.
- Having a `_pages` collection for easier organization.
- An author bio at the end of each post. (Located in `_inclues/author.html`)
- Full Rouge support for syntax highlighting. (Currently using `base16.solarized.light`)
- Auto-generated RSS feed, sitemap, accessibility features, and search-engine optimization.

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
git clone https://github.com/brennanbrown/purelog.git
```

4. Change into your new directory.

```
cd purelog
```

5. Install gems from the `Gemfile`.

```
bundle install
```

6. Build the site and make it available on a local server.

```
bundle exec jekyll serve
```

7. Browse to [http://localhost:4000](http://localhost:4000)

If you encounter any errors during this process, check that you have installed all the prerequisites in [Requirements](https://jekyllrb.com/docs/installation/#requirements).

If you still have issues, see [Troubleshooting](https://jekyllrb.com/docs/troubleshooting/#configuration-problems).

## Getting Started

Once you have Jekyll up-and-running, there are only a few steps needed to make this theme your own:

1. Fill out the `_BLANK_config.yml` configuration file and replace the current `_config.yml`
2. Remove the `example_posts` folder in `_posts`, `_notes`, `_journals` and start writing your own!
3. Modify or remove the pages in `_pages` to however you see fit.
4. _(Optional)_ Modify or remove this `README.md` with information about your own project or blog.
5. _(Optional)_ Modify the CSS files in the `assets` folder to customize the site.

<!-- ROADMAP -->

## Roadmap

There are several features that I'm still planning to create and integrate, including:

- Create a [Theme Gem](https://jekyllrb.com/docs/themes/#publishing-your-theme)
- Add easy and automatic buttons to ["Deploy to Netlify"](https://docs.netlify.com/site-deploys/create-deploys/#deploy-to-netlify-button), Heroku, etc.
- Add Travis continious integration checks
- Add additional documentation for creating custom collections and auto generated pages
- Add more example posts and articles

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

## Resources

While creating this theme, I came across a lot of helpful and hard-to-find resources. If you'd like to dive deeper into Jekyll, check them out:

- Jumping Into Jekyll: https://dev.to/brennan/jumping-into-jekyll-4o9h
- Jekyll Cheatsheet: https://devhints.io/jekyll
- Course on Jekyll: https://learn-the-web.algonquindesign.ca/topics/jekyll/
- Jekyll for Designers: http://simpleprimate.com/jekyll-for-designers/index.html
- Dynamic Copyright on Jekyll: https://michaelsoolee.com/jekyll-copyright/
- Creating breadcrumbs in Jekyll: https://jekyllcodex.org/without-plugin/breadcrumbs/
- Display all items from ALL collections: https://stackoverflow.com/questions/31171041/listing-all-collections-in-jekyll

### Other Resources

- For markdown previews: https://jaspervdj.be/lorem-markdownum/
- Case Study on webfont performance: https://www.keycdn.com/blog/web-font-performance
- An extensive `.gitignore`: https://miguelmota.com/bytes/extensive-gitignore/

## Credit

[**Pure.css**](https://purecss.io/) was created by the [Pure CSS](https://github.com/pure-css) group.

[**Simple Jekyll Search**](https://github.com/christian-fei/Simple-Jekyll-Search) was created by [Christian Fei](https://github.com/christian-fei).

Various notes and ideas were taken from [**Simply Jekyll**](https://github.com/raghuveerdotnet/simply-jekyll) by [Raghuveer S.](https://github.com/raghuveerdotnet).
