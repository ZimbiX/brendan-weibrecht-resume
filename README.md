# Brendan Weibrecht's résumé

## Setup

With Ruby 1.9.3 installed, just run Bundler to install all the required gems:

	bundle install

## Server

To start Sinatra, run either:

	bundle exec shotgun

or:

	bundle exec ./app.rb

Then open your browser at the given specified port

## Build

Run Guard to build automatically when any changes are detected:

	bundle exec guard

Or to just build once:

	bundle exec rake build

The build will be located in the `build` folder.

## Committing changes

Build before committing to keep the published build up to date.