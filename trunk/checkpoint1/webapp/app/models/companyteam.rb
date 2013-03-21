class Companyteam < ActiveRecord::Base
  attr_accessible :address, :cmuaffiliation, :description, :email, :firstname, :lastname, :linkedin, :phone, :picture_id, :startup_id, :title
  belongs_to :Startup
  belongs_to :Picture
end
