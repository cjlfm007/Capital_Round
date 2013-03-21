class Startup < ActiveRecord::Base
  attr_accessible :name, :link, :pitch, :id, :status, :avatar

  validates_length_of :name, :within => 3..40
  validates_format_of :link, :with => /(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+(?:[A-Z]2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|asia|jobs|museum|li|ru)/i, :message => "Invalid email"



  mount_uploader :avatar, AvatarUploader


  has_many :Companyupdates
  has_many :Companydescriptions
  has_many :Companyteams
  has_many :Companydocuments

  has_many :Investors
  has_many :Owners
  has_many :Followers

  has_many :Investor_users, :through => :Investors, :source => :user
  has_many :Owner_users, :through => :Owners, :source => :user
  has_many :Follower_users, :through => :Followers, :source => :user

  has_one :Campaign

end

