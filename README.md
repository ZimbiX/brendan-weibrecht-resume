# Brendan Weibrecht's résumé

**[View the current version of my résumé online][html build]** (available under `build`).

Having previously created my résumé in HTML and CSS so as to have maximum control over its layout and formatting, I decided to over-engineer it in order to distinguish myself when applying for positions. Content is now written in Markdown, layouts use HAML, style is in Sass, and previews and builds happen automatically thanks to some handy Ruby gems.

## Setup

With Ruby 2.3.1 installed, just run Bundler to install all the required gems:

	bundle install

This should be sufficient to get it working on Ubuntu 14.04.

## Server

To start Sinatra, run either:

	bundle exec shotgun

or:

	bundle exec ./app.rb

Then open your browser at the given specified port

## Build

### HTML

Run Guard to build automatically when any changes are detected:

	bundle exec guard

Or to just build once:

	bundle exec rake build

The build will be located in the `build` folder.

### PDF

To best preserve formatting, use Google Chrome. Open the HTML in Chrome, and print with headers & footers disabled.

### Microsoft Word

To best preserve formatting, use Microsoft Word. Open the HTML in Word, and save as a `.doc` file.

## Committing changes

Build before committing to keep the published build up to date.

[html build]: http://htmlpreview.github.com/?https://github.com/ZimbiX/brendan-weibrecht-resume/blob/master/build/brendan-weibrecht-resume.html