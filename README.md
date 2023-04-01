# Jekyll Static Website Source for Doctor's Landing Page

[![Build Status](https://github.com/patrickfav/website-dr-sel/actions/workflows/build_deploy.yml/badge.svg)](https://github.com/patrickfav/website-dr-sel/actions)
[![Bugs](https://sonarcloud.io/api/project_badges/measure?project=patrickfav_website-dr-sel&metric=bugs)](https://sonarcloud.io/summary/new_code?id=patrickfav_website-dr-sel)
[![Technical Debt](https://sonarcloud.io/api/project_badges/measure?project=patrickfav_website-dr-sel&metric=sqale_index)](https://sonarcloud.io/summary/new_code?id=patrickfav_website-dr-sel)
[![Maintainability Rating](https://sonarcloud.io/api/project_badges/measure?project=patrickfav_website-dr-sel&metric=sqale_rating)](https://sonarcloud.io/summary/new_code?id=patrickfav_website-dr-sel)

This is the source for the [Jekyll](https://jekyllrb.com) static website project for a very simple doctors landing page.
The production version can be found [here](https://selwicka-wienerroither.com/).


[![website screenshot](https://repository-images.githubusercontent.com/135200872/2f76b1c1-d1e5-4cd8-8b69-0948bbdecbed)](https://selwicka-wienerroither.com/)


## Build

[Jekyll](https://jekyllrb.com) is a Ruby CLI and used as engine for Github Pages.

### Ruby

Jekyll requires Ruby 2.6+ so you might be required to install it.

Install Ruby itself:

    apt-get update
    apt-get install ruby-full
    apt-get install nodejs

Install rbenv for easier switching of ruby versions

```bash
sudo apt install git curl libssl-dev libreadline-dev zlib1g-dev autoconf bison build-essential libyaml-dev libreadline-dev libncurses5-dev libffi-dev libgdbm-dev
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-installer | bash
```

and add this to `~/.zshrc` (or `~/.bashrc`)

```
echo 'export PATH="$HOMe/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc

curl -fsSL https://github.com/rbenv/rbenv-installer/raw/HEAD/bin/rbenv-doctor | bash
```

then install the desired ruby version
```bash
rbenv install 3.2.1
rbenv global 3.2.1
ruby -v
```

Then update the gems (Ruby package manager)

    gem update

For details on how to do this on the [Linux subsystem for Windows 10 see here](https://jekyllrb.com/docs/windows/).

### Bundler and Jekyll

Install the `bundler`:

    gem install bundler

you may want to set the default gem path, so you don't need `sudo`

    bundle config path vendor/bundle
    
then, in the project root folder, install all the dependencies with

    bundle install

You should be able to run jekyll now with

    bundle exec jekyll -v

### Develop

With this command a development web-server will be started on [http://localhost:4000](http://localhost:4000)

    bundle exec jekyll serve --livereload

For more info see the [quick-start section](https://jekyllrb.com/docs/quickstart/).

### Build Site

With the following command the website will be packaged and copied to `_site`

    bundle exec jekyll build

## Continuous Deployment

Every Pull-Request will automatically deploys to a temporary Firebase Staging environment (link posted as comment in the PR by Github Actions)
(_Note_: This will NOT be build with the production flag.)

Every main commit triggers a deploy to the [Firbase Hosting](https://selwicka-wienerroither.com/) through [Github Actions](https://github.com/patrickfav/website-dr-sel/actions).

# Frameworks and Libraries

* [Jekyll](https://jekyllrb.com/)
  * Plugins: [Maps](https://github.com/ayastreb/jekyll-maps), [Last-Modified](https://github.com/gjtorikian/jekyll-last-modified-at),
  [Sitemap](https://github.com/jekyll/jekyll-sitemap), [Analytics](https://github.com/hendrikschneider/jekyll-analytics), 
  [Version](https://github.com/rob-murray/jekyll-version-plugin), [Minifier](https://github.com/digitalsparky/jekyll-minifier), 
  [Webp](https://github.com/sverrirs/jekyll-webp)
* [HTML5 UP's Spectral Theme](https://github.com/arkadianriver/spectral)
  * [Skel 3](https://github.com/ajlkn/skel), [Jquery 3.3.1](https://jquery.com/), [Scrolly](https://github.com/Victa/scrolly), [Scrollex](https://github.com/ajlkn/jquery.scrollex)
* [Font Awesome 5](https://fontawesome.com/)
* [Firebase Hosting](https://firebase.google.com/docs/hosting/)

# License

Proprietary: Patrick Favre-Bulle 2018
