class CreateCompanydescriptions < ActiveRecord::Migration
  def change
    create_table :companydescriptions do |t|
      t.integer :startup_id
      t.string :title
      t.text :content
      t.integer :isclosed

      t.timestamps
    end
  end
end
