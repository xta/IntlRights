class Country < ActiveRecord::Base
  attr_accessible :name, :alpha2, :alpha3, :numeric

  validates :name, :uniqueness => true
  validates :alpha2, :uniqueness => true
  validates :alpha3, :uniqueness => true
  validates :numeric, :uniqueness => true

  has_many :policies, :dependent => :destroy
  has_many :videos, :through => :policies
end
