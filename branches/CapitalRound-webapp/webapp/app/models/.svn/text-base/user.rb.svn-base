class User < ActiveRecord::Base

  attr_accessible :firstname, :lastname, :cmuaffiliation, :authentication_id, :avatar

  mount_uploader :avatar, AvatarUploader

  validates_presence_of :firstname, :lastname,  :message => "Incomplete fields"


  has_many :Investors
  has_many :Owners
  has_many :Followers
  
  has_many :Investor_startups, :through => :Investors, :source => :startup
  has_many :Owner_startups, :through => :Owners, :source => :startup
  has_many :Follower_startups, :through => :Followers, :source => :startup

  has_many :Funds

  attr_protected :authentication_id
  belongs_to :Authentication


  def self.check_errors(user_info)

    return "Invalid first name" if user_info[:firstname] == nil || user_info[:firstname] == ""
    return "Invalid last name" if user_info[:lastname] == nil || user_info[:lastname] == ""
    return "Invalid CMU affiliation" if user_info[:cmuaffiliation] == nil || user_info[:cmuaffiliation] == ""

    nil
  end

end
