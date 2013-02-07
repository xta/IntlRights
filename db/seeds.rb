# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Countries
  # United States, Canada, China, Mexico, India, and Taiwan

  countries = %w(us ca ch mx in tw)

  countries.each do |country|
    code = IsoCountryCodes.find(country)
    Country.create!(:name => code.name, :alpha2 => code.alpha2, :alpha3 => code.alpha3, :numeric => code.numeric)
  end

# Videos

  (0..99).each do |video_count|
    two_digit = format('%02d', video_count)
    video = Video.create(:vid => "Vid#{two_digit}")

    Country.all.each do |country|
      Policy.create(:video_id => video.id, :country_id => country.id, :rights => Policy::POLICY_RIGHTS.sample)
    end
  end