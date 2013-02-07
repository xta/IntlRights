#Intl Rights
*sample app for managing rights by country code*

##Setup Instructions
config database.yml

    rake db:create
    rake db:migrate

##Deliverables
* A page with a grid showing all 100 videos, and their monetization policy per country.
* A page taking a single parameter (ISO-country code, e.g. US), and shows all videos available in the specified country.
* A page taking two parameters (video primary key and country code), and shows monetization policy.
* Heroku live site

##Considerations
* Every 60 minutes, data can become stale
* Read (not write) is priority

##Possible Roadmap
* Hourly refresh of data handling
* Cache returned results every hour

###Policy Types

* Monetize – a video can be viewed, and can have ads run against it
* Free – a video can be viewed, but cannot have ads run against it
* Block – a video cannot be viewed

###Resources

* [ISO-country codes](http://en.wikipedia.org/wiki/ISO_3166-1)
* **Heroku link TBD**