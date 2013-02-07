class Country < ActiveRecord::Base
  attr_accessible :name, :alpha2, :alpha3, :numeric

  has_many :policies, :dependent => :destroy
  has_many :videos, :through => :policies
end
