class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :link
      t.string :name
      t.text :pitch
      t.string :image_path
      t.integer :goal_sum
      t.integer :raised_sum
      t.datetime :closing_date
      t.string :status

	  t.timestamps
    end

  end
end
