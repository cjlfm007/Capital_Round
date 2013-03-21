class Picture < ActiveRecord::Base
  attr_accessible :avatar, :title, :remote_avatar_url, :avatar_cache, :remove_avatar, :picture_file

  has_many :Companyteams


  mount_uploader :avatar, AvatarUploader

end
