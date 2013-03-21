class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :firstname
      t.string :lastname
      t.string :image_path
      t.integer :picture_id
      t.integer :authentication_id

      t.timestamps
    end
  end
end
