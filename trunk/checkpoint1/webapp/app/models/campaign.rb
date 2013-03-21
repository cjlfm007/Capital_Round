class Campaign < ActiveRecord::Base
  attr_accessible :closing_date, :goal_sum, :raised_sum, :startup_id, :status
  belongs_to :Startup
end
