class User < ActiveRecord::Base
  validates_uniqueness_of :email
  attr_accessible :username, :password, :image_path, :firstname, :lastname, :cmuaffiliation, :email, :authentication_id, :avatar, :remove_avatar

  mount_uploader :avatar, AvatarUploader

  validates_presence_of :firstname, :lastname, :email,  :message => "Incomplete fields"
  validates_format_of :email, :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Invalid email"
  has_many :Investors
  has_many :Funds

  attr_protected :authentication_id
  belongs_to :Authentication

end
