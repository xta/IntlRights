class Policy < ActiveRecord::Base
  # relations
    attr_accessible :video_id, :country_id, :rights

    belongs_to :video
    belongs_to :country

  #constant
    POLICY_RIGHTS    = %w( Free Monetize Block )
    AVAILABLE_RIGHTS = %w( Free Monetize )

  #validation
    validates :video_id, :presence => true 
    validates :country_id, :presence => true
    validates :rights, :presence => true
    validates_inclusion_of :rights, :in => POLICY_RIGHTS

end
