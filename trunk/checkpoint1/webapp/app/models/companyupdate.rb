class Companyupdate < ActiveRecord::Base
  attr_accessible :content, :newsdate, :startup_id, :title
  belongs_to :Startup
end
