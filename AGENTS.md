# AGENTS.md

## Project overview

This repository contains the source for the German-language static website of
Ordination Selwicka-Wienerroither in Vienna. It is a Jekyll site, not a
JavaScript application: there is no `package.json`, Node build, or application
test suite.

The public site is built into `_site/` and hosted with Firebase Hosting. The
deployed site is `https://selwicka-wienerroither.com/`.

These instructions apply to the whole repository. There are no nested
`AGENTS.md` files at present.

## Environment and dependencies

- Use the Ruby version in `.ruby-version` (`3.3.10` in this checkout).
- Dependencies are pinned in `Gemfile.lock`; use Bundler for every Ruby/Jekyll
  command.
- The local bundle path is configured as `vendor/bundle`, and `vendor/` is
  ignored by Git.
- Install dependencies with:

  ```sh
  bundle install
  ```

- Do not add a Node package manager or a new frontend build system for routine
  site changes.

## Repository map

- `page_index.html`: landing page content and homepage sections.
- `page_contact.md`, `page_gdpr.md`, `page_legal_notice.md`: rendered pages
  with front matter, permalinks, and page ordering metadata.
- `_data/global.yml`: shared business data and feature flags, including
  contact details, opening hours, vacation notices, the banner, and sickness
  notices.
- `_layouts/`: page shells (`landing`, `page`, `default`, and `simple`).
- `_includes/`: reusable HTML/Liquid fragments, SEO metadata, conditional
  vacation/sickness notices, and JavaScript fragments.
- `_plugins/`: custom Liquid filters and cache-busting/version helpers loaded
  during the local/CI Jekyll build.
- `css/main.scss`: primary Sass entry point. `css/ie8.scss` and `css/ie9.scss`
  are legacy browser stylesheets.
- `_sass/`: shared Sass variables, functions, mixins, layout helpers, and the
  custom icon font styles.
- `js/scripts.js`: Jekyll-assembled JavaScript entry point; it includes the
  vendored libraries and `_includes/js/custom_script.js`.
- `images/`, `fonts/`, and `js/`: static assets. The WebP plugin generates
  optimized image output during a build.
- `_config.yml`: normal site configuration and plugin registration.
- `_config.prod.yml`: production-only minification and WebP settings; pass it
  together with `_config.yml` rather than using it alone.
- `firebase.json`: Firebase Hosting redirects, cache headers, and `_site/` as
  the hosting directory.
- `.github/workflows/build_deploy.yml`: CI build, HTML validation, preview
  deployment for pull requests, and live deployment from `main`.
- `backup/`: archived legacy files; do not use these as active site sources.

## Common commands

Run commands from the repository root.

### Local development

Start a live-reloading development server at `http://localhost:4000`:

```sh
bundle exec jekyll serve --livereload
```

The development build includes a `noindex` meta tag and displays a development
preview marker. This is intentional and should not be removed to make local
previews look like production.

### Build

Build using the normal configuration:

```sh
bundle exec jekyll build
```

Build using the same production configuration as CI:

```sh
JEKYLL_ENV=production bundle exec jekyll build -t --config "_config.yml,_config.prod.yml"
```

The output is `_site/`. It is generated and ignored; never edit generated HTML,
CSS, WebP files, or metadata in `_site/` as a source change.

### Validation

CI runs this HTML check after building:

```sh
bundle exec htmlproofer ./_site \
  --allow-missing-href \
  --allow-hash-href \
  --ignore-status-codes 301,302,999 \
  --ignore_urls "https://www.linkedin.com/in/beate-selwicka-wienerroither-b5083281/"
```

There are no unit or integration test commands in the repository. For any
change, at minimum build the site; for content, template, link, or asset
changes, run HTMLProofer as well. Sass currently emits deprecation warnings
from the legacy theme helpers; treat a non-zero build exit as a failure, but do
not rewrite the theme solely to silence those warnings unless that is the
explicit task.

## Making changes

### Content and business data

- Keep public copy in German unless the requested change says otherwise.
- Update shared practice details in `_data/global.yml` so the homepage,
  contact page, legal notice, and JSON-LD metadata stay consistent. Do not
  duplicate contact details in templates when a data field already exists.
- Treat phone numbers, addresses, opening hours, vacation dates, legal text,
  and medical claims as high-sensitivity content. Preserve the existing
  meaning and verify spelling, dates, and links carefully.
- Vacation entries are evaluated against the current date at build time and
  are shown only while their end date is in the future. Keep dates in the
  existing YAML date format and ensure an active entry has the needed
  substitute/contact fields.
- Feature flags in `_data/global.yml` control conditional sections:
  `vacation.enabled`, `covid.enabled`, `sickness.enabled`, and
  `banner.enabled`. Check both homepage and contact-page behavior when
  changing one.
- `hours.enabled_by_appointment_only: true` intentionally hides the hours
  table. If changing it to `false`, populate every weekday field referenced by
  the templates, including Friday.
- Preserve page front matter fields such as `layout`, `permalink`,
  `internal_id`, `title`, `description`, and `order`. Navigation is generated
  by sorting pages by `order`.

### Templates, Liquid, and plugins

- Prefer editing the smallest relevant page or include. Reusable markup
  belongs in `_includes/`; page wrappers belong in `_layouts/`.
- Use the existing filters (`tel_link`, `external_link`, cache-busting, and
  other custom filters) where they already establish site behavior.
- Custom plugins are required by the templates and are executed by the local
  build and GitHub Actions. GitHub Pages safe mode does not execute these
  plugins, so do not switch the deployment to an unrelated GitHub Pages build
  without replacing their behavior.
- Be careful with Liquid output embedded in JSON-LD in `_includes/seo_meta.html`:
  malformed commas, quotes, or missing data can produce invalid structured
  data even when the page visually renders.
- Preserve the existing `baseurl` handling in links and asset paths so the site
  works when served from a preview path.

### Styles, scripts, and assets

- Keep the YAML front matter at the top of `css/main.scss` and `js/scripts.js`;
  Jekyll uses it to process those files and their Liquid expressions.
- Put shared theme changes in `_sass/` and page-specific selectors in
  `css/main.scss`. Keep the IE8/IE9 files limited to their compatibility role.
- Avoid replacing the vendored legacy libraries in `_includes/js/` unless the
  task specifically requires it. Changes to those files affect the assembled
  `js/scripts.js` output and its cache-busting hash.
- Add or replace source images and fonts under the existing asset directories.
  Let the Jekyll WebP plugin generate derived files during the build; do not
  hand-edit generated WebP output.
- Preserve meaningful image `alt` text and check responsive behavior when
  changing the landing-page markup.

## Deployment and GitHub Actions

- Pull requests build the site, run HTMLProofer, and deploy a temporary
  Firebase preview channel that expires after seven days.
- Pushes to `main` build with `JEKYLL_ENV=production` and deploy the live
  Firebase Hosting channel.
- `firebase.json` owns redirects and cache headers. Changes to old URL
  redirects or caching are production-impacting and should be reviewed as
  deployment changes, not treated as ordinary copy edits.
- Do not commit Firebase credentials, service-account JSON, local logs, bundle
  contents, Jekyll caches, or `_site/`; the existing ignore rules cover these
  generated/local files.
- Keep `Gemfile` and `Gemfile.lock` consistent. When changing dependencies,
  regenerate the lockfile with Bundler and run a clean production build.
- Keep commits focused. In a pull request, summarize the visible/content
  change, list validation commands, and call out any external-link or legal
  text changes.

## Definition of done

Before handing off a change:

1. Confirm the source files—not `_site/`—contain the intended change.
2. Run the relevant development or production Jekyll build.
3. Run the CI HTMLProofer command for rendered-content or link changes.
4. Inspect `git diff` and `git status` to ensure no generated or unrelated
   files are included.
5. For changes to contact, legal, medical, hours, or vacation information,
   manually inspect the rendered affected page(s) and verify all links and
   dates.
