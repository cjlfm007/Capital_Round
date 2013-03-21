class Startup < ActiveRecord::Base
  attr_accessible :name, :link, :pitch, :id, :goal_sum, :raised_sum, :closing_date, :status, :avatar, :startup

  mount_uploader :avatar, AvatarUploader


  has_many :Companyupdates
  has_many :Companydescriptions
  has_many :Companyteams
  has_many :Companydocuments
  has_many :Investors
  has_many :Campaigns


  
end

