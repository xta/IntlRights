class Country < ActiveRecord::Base
  has_many :policies, :dependent => :destroy
  has_many :videos, :through => :policies
end
