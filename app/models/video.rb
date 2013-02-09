class Video < ActiveRecord::Base
  # relations
    attr_accessible :vid

    has_many :policies, :dependent => :destroy
    has_many :countries, :through => :policies

  #validation
    validates :vid, :uniqueness => true

  #pagination
    paginates_per 100

  # scopes
    default_scope { includes(:policies) }

    def self.by_id_and_country(id, country)
      find(id, :conditions => { policies: {country_id: country.id} })
    end

    def self.by_country(country)
      where(policies: {country_id: country.id})
    end

end
