# Haozhan (Tom) Tang - Personal Website

Personal academic website built with [Jekyll](https://jekyllrb.com/), based on the [al-folio](https://github.com/alshedivat/al-folio) theme with a custom "Chang'an ward grid" design system (see [Design](#design)).

Live at: [tomtango.net](https://www.tomtango.net)

## Prerequisites

- [rbenv](https://github.com/rbenv/rbenv) with Ruby 3.3.6
- [Bundler](https://bundler.io/)
- [ImageMagick](https://imagemagick.org/) (for responsive image generation)

### macOS

```bash
brew install rbenv ruby-build imagemagick
rbenv install 3.3.6
rbenv local 3.3.6
gem install bundler
```

## Install

```bash
bundle install
```

## Run Locally

A convenience script is provided that sets up rbenv and serves on port 11868:

```bash
./serve.sh
```

Or run manually:

```bash
bundle exec jekyll serve --port 11868
```

Then open [http://localhost:11868](http://localhost:11868).

## Formatting

Run prettier before pushing to pass CI checks:

```bash
./format.sh
```

## Project Structure

```
_bibliography/   # BibTeX files (papers.bib)
_includes/       # Liquid template partials (header.liquid = nav wards)
_layouts/        # Page layout templates (default.liquid = the ward map)
_news/           # News/announcement items
_pages/          # Site pages (about, publications & projects, blog)
_projects/       # Project collection entries
_plugins/        # Custom Jekyll plugins
_sass/           # SCSS stylesheets (_ward.scss = the design system)
assets/          # Static assets (CSS, JS, images, PDFs, videos)
```

## Design

The site uses a dark, terminal-flavored "ward grid" layout: every page is a single
6-column CSS grid (`.ward-map`) whose 1px gutters render as visible walls, and all
content lives in labeled cells (wards). Conventions, all defined in `_sass/_ward.scss`:

- Every page's markup must emit `.ward` divs as **direct children** of `.ward-map`.
  The `page` layout wraps content in a ward automatically; set `ward_self: true` in
  front matter to emit your own wards (see `_pages/pub_projects.md`).
- Each content ward carries a small top-left label (`.fang`) that turns red on hover.
- One green rule per page: the `.gate` ward's 3px inset (the title ward).
- Accents: green = working accent (links, active nav), seal red = identity accents
  (heading markers, self-author underline), `--sky` blue and `--stamp` indigo are
  owner accents. Pixel art always uses `image-rendering: pixelated`.
- Never use Bootstrap's `.btn-primary` class — the MDB CDN stylesheet overrides it
  with `!important`.

## Adding Content

### New publication

1. Add a BibTeX entry to `_bibliography/papers.bib` with the `year` field
2. Optionally add a preview image to `assets/img/publication_preview/`

Publications are auto-grouped by year on the Publications & Projects page.

### New project

1. Create a markdown file in `_projects/` with frontmatter including `year` and `category`
2. Add project images to `assets/img/projects/`

Projects appear automatically under their year on the Publications & Projects page.

## Deployment

Pushing to `master` triggers the GitHub Actions workflow (`.github/workflows/deploy.yml`),
which builds the site and publishes `_site` to the `gh-pages` branch, served at
[tomtang502.github.io](https://tomtang502.github.io). The custom domain
[tomtango.net](https://www.tomtango.net) is an AWS S3 + CloudFront mirror of the same
build and must be synced separately after each deploy.

## Acknowledgements

This website is built on top of the [al-folio](https://github.com/alshedivat/al-folio) theme, created by [Maruan Al-Shedivat](https://github.com/alshedivat) and contributors. al-folio was originally based on the [\*folio theme](https://github.com/bogoli/-folio) by [Lia Bogoev](https://liabogoev.com).

## License

The theme is available as open source under the terms of the [MIT License](LICENSE).

Copyright (c) 2022 Maruan Al-Shedivat.
