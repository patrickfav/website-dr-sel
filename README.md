# Jekyll Static Website Source for Doctor's Landing Page

[![Build Status](https://travis-ci.org/patrickfav/website-dr-sel.svg?branch=master)](https://travis-ci.org/patrickfav/website-dr-sel)

This is the source for the [Jekyll](https://jekyllrb.com) static website project for a very simple doctors landing page.

A preview of the most recent commit on master can be seen on the
[staging firebase project](https://staging-ordination-selwicka.firebaseapp.com/).
The production version can be found [here](https://ordination-selwicka.firebaseapp.com/).

## Build

[Jekyll](https://jekyllrb.com) is a Ruby CLI and used as engine for Github Pages.

### Ruby

Jekyll requires Ruby 2.2+ so you might be required to install it.

First install all prerequisite libraries ([see also this post](https://stackoverflow.com/a/26595869/774398)):

    sudo apt-get update -y && sudo apt-get upgrade -y
    sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev

Then install Ruby itself:

    sudo apt-add-repository ppa:brightbox/ruby-ng
    sudo apt-get update
    sudo apt-get install ruby2.4 ruby2.4-dev build-essential dh-autoreconf

Then update the gems (Ruby package manager)

    sudo gem update

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

Every commit to the `master` branch will be automatically build and deployed via to the [Firebase staging](https://staging-ordination-selwicka.firebaseapp.com/)
environment. (_Note_: This will NOT be build with the production flag.)

Every git tag triggers a deploy to the [Firbase Hosting](https://ordination-selwicka.firebaseapp.com/) through [Travis CI](https://travis-ci.org/patrickfav/website-dr-sel).

# Frameworks and Libs

* [Jekyll](https://jekyllrb.com/)
  * Plugins: [Maps](https://github.com/ayastreb/jekyll-maps), [Seo](https://github.com/jekyll/jekyll-seo-tag), 
  [Sitemap](https://github.com/jekyll/jekyll-sitemap), [Analytics](https://github.com/hendrikschneider/jekyll-analytics), 
  [Version](https://github.com/rob-murray/jekyll-version-plugin), [Minifier](https://github.com/digitalsparky/jekyll-minifier), 
  [Webp](https://github.com/sverrirs/jekyll-webp) 
* [HTML5 UP's Spectral Theme](https://github.com/arkadianriver/spectral)
  * [Skel 3](https://github.com/ajlkn/skel), [Jquery 2.2.4](https://jquery.com/), [Scrolly](https://github.com/Victa/scrolly), [Scrollex](https://github.com/ajlkn/jquery.scrollex)
* [Font Awesome 5](https://fontawesome.com/)
* [Firebase Hosting](https://firebase.google.com/docs/hosting/)

# License

Proprietary: Patrick Favre-Bulle 2018
