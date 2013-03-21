class Companydescription < ActiveRecord::Base
  attr_accessible :content, :isclosed, :startup_id, :title
  belongs_to :Startup
end
