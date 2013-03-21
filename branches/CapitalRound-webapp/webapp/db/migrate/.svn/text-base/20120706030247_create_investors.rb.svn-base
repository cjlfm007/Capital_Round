class CreateInvestors < ActiveRecord::Migration
  def change
    create_table :investors do |t|
      t.integer :startup_id
      t.integer :user_id
      t.integer :sum
      t.integer :ismentor      
      t.integer :isinvestor    
      t.integer :isfollower
      t.integer :isowner

      t.timestamps
    end
  end
end
