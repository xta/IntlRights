class Video < ActiveRecord::Base
  has_many :policies, :dependent => :destroy
  has_many :countries, :through => :policies
end
