class Country < ActiveRecord::Base
  # relations
    attr_accessible :name, :alpha2, :alpha3, :numeric
    
    has_many :policies, :dependent => :destroy
    has_many :videos, :through => :policies

  #validation
    validates :name, :uniqueness => true
    validates :alpha2, :uniqueness => true
    validates :alpha3, :uniqueness => true
    validates :numeric, :uniqueness => true

  def self.by_iso(alpha2_param)
    self.find_by_alpha2(alpha2_param.upcase)
  end

end
