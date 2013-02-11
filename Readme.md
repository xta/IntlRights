#Intl Rights
*sample app for managing rights by country code*

##Stack
* ruby 1.9.3p374 
* Rails 3.2.11
* PostgreSQL

##Development Setup
    git clone git@github.com:xta/IntlRights.git
    cd IntlRights
    bundle
    rake bootstrap:setup    
config `database.yml` & type 'continue'

    rails s

Optional task: create 500K additional videos `rake create_video_thousand_times[500]`

##Test Setup
    rake db:test:prepare
    rake db:seed RAILS_ENV=test
`bundle exec guard` OR `rspec`

##Development Caching Enabled
Caching is enabled in development mode at `config/environments/development.rb`

If experiencing cache expiration issues, you may enter the command `Rails.cache.clear` in Rails Console to clear the cache.

##Deliverables
* [Live site](http://intlrightsdemo.herokuapp.com/)
* [A page with a grid showing all 100 videos, and their monetization policy per country.](http://intlrightsdemo.herokuapp.com/)
* [A page taking a single parameter (ISO-country code, e.g. US), and shows all videos available in the specified country.](http://intlrightsdemo.herokuapp.com/country/US)
* [A page taking two parameters (video primary key and country code), and shows monetization policy.](http://intlrightsdemo.herokuapp.com/show/8?iso_code=US)

##Policy Types

* Monetize – a video can be viewed, and can have ads run against it
* Free – a video can be viewed, but cannot have ads run against it
* Block – a video cannot be viewed

##Resources

* [ISO-country codes](http://en.wikipedia.org/wiki/ISO_3166-1)
* [Demo site](http://intlrightsdemo.herokuapp.com/)