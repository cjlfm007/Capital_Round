class Campaign < ActiveRecord::Base
  attr_accessible :closing_date, :goal_sum, :raised_sum, :startup_id, :status, :valuation_sum
  belongs_to :Startup
  validates_presence_of :goal_sum, :valuation_sum, :message => "Incomplete fields"
  validate :validates_valuation_sum_and_goal_sum
  #validate :test

  def validates_valuation_sum_and_goal_sum

    if valuation_sum && goal_sum
    errors.add(:valuation_sum, "Valuation should always be greater than goal") if valuation_sum < goal_sum
    errors.add(:valuation_sum, "Valuation should be between $10,000 and $1 billion") if valuation_sum < 10000
    errors.add(:valuation_sum, "Valuation should be between $10,000 and $1 billion") if valuation_sum > 1000000000
    errors.add(:goal_sum, "Goal should be between $5,000 and $1 million")  if goal_sum < 5000
    errors.add(:goal_sum, "Goal should be between $5,000 and $1 million")  if goal_sum > 1000000



    number_of_days = Date.parse( closing_date.strftime('%Y-%m-%d')) - Date.today
   errors.add(:closing_date, "The closing date should be within 2 months from today") if  number_of_days > 60
    errors.add(:closing_date, "The closing date should be a date in future")if Date.parse( closing_date.strftime('%Y-%m-%d')) < Date.today

  end

    end



end