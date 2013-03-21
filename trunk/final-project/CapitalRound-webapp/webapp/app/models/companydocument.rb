class Companydocument < ActiveRecord::Base
  attr_accessible :path, :startup_id, :title, :document_id
  belongs_to :Startup
  belongs_to :Document
end
