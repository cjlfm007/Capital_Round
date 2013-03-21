# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20121111193048) do

  create_table "authentications", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "salt"
  end

  create_table "campaigns", :force => true do |t|
    t.integer  "startup_id"
    t.integer  "goal_sum"
    t.integer  "raised_sum"
    t.datetime "closing_date"
    t.string   "status"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "companydescriptions", :force => true do |t|
    t.integer  "startup_id"
    t.string   "title"
    t.text     "content"
    t.integer  "isclosed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "companydocs", :force => true do |t|
    t.integer  "startup_id"
    t.string   "filename"
    t.string   "path"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
    t.binary   "document",   :limit => 1
  end

  create_table "companydocuments", :force => true do |t|
    t.integer  "startup_id"
    t.string   "title"
    t.string   "path"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "document_id"
  end

  create_table "companyteams", :force => true do |t|
    t.integer  "startup_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "title"
    t.text     "description"
    t.string   "linkedin"
    t.string   "cmuaffiliation"
    t.string   "email"
    t.string   "phone"
    t.string   "address"
    t.integer  "picture_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "companyupdates", :force => true do |t|
    t.integer  "startup_id"
    t.string   "title"
    t.datetime "newsdate"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.binary   "document_file"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "funds", :force => true do |t|
    t.integer  "user_id"
    t.integer  "fund_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "investors", :force => true do |t|
    t.integer  "startup_id"
    t.integer  "user_id"
    t.integer  "sum"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "ismentor"
    t.integer  "isinvestor"
    t.integer  "isfollower"
    t.integer  "isowner"
  end

  create_table "pictures", :force => true do |t|
    t.string   "title"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "avatar"
    t.binary   "picture_file"
  end

  create_table "startups", :force => true do |t|
    t.string   "link"
    t.string   "name"
    t.text     "pitch"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "image_path",   :limit => 45
    t.integer  "goal_sum"
    t.integer  "raised_sum"
    t.datetime "closing_date"
    t.string   "status",       :limit => 45
    t.string   "avatar"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "image_path"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "firstname"
    t.string   "lastname"
    t.string   "cmuaffiliation"
    t.string   "email"
    t.integer  "picture_id"
    t.integer  "authentication_id"
    t.string   "pic_file_name"
    t.string   "pic_content_type"
    t.integer  "pic_file_size"
    t.datetime "pic_updated_at"
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.string   "avatar"
    t.string   "salt"
  end

end
