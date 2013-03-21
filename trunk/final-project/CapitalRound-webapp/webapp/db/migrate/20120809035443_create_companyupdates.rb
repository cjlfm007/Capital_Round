class CreateCompanyupdates < ActiveRecord::Migration
  def change
    create_table :companyupdate do |t|
      t.integer :startup_id
      t.string :title
      t.datetime :newsdate
      t.text :content

      t.timestamps
    end
  end
end
