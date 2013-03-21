class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :startup_id
      t.integer :goal_sum
      t.integer :raised_sum
      t.datetime :closing_date
      t.string :status

      t.timestamps
    end
  end
end
