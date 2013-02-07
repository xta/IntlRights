class Policy < ActiveRecord::Base

  attr_accessible :video_id, :country_id, :rights

  #constant
  POLICY_RIGHTS = %w( Free Monetize Block )

  validates_inclusion_of :rights, :in => POLICY_RIGHTS

  belongs_to :video
  belongs_to :country

end
