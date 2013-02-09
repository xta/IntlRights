class Video < ActiveRecord::Base
  attr_accessible :vid

  validates :vid, :uniqueness => true

  has_many :policies, :dependent => :destroy
  has_many :countries, :through => :policies

  paginates_per 100

  def self.by_id_and_country(id, country)
    find(id, :conditions => { policies: {country_id: country.id} })
  end

  def self.by_country(country)
    where(policies: {country_id: country.id})
  end

end
