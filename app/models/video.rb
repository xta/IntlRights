class Video < ActiveRecord::Base
  attr_accessible :vid

  validates :vid, :uniqueness => true

  has_many :policies, :dependent => :destroy
  has_many :countries, :through => :policies
end
