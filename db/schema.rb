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

ActiveRecord::Schema.define(:version => 20121202001056) do

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "locations", :force => true do |t|
    t.decimal  "lat",        :precision => 10, :scale => 6
    t.decimal  "lng",        :precision => 10, :scale => 6
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "pet_breeds", :force => true do |t|
    t.string   "breed"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pet_types", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.integer  "type_id"
    t.integer  "breed_id"
    t.string   "sex",         :limit => 6
    t.text     "description"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "posts", :force => true do |t|
    t.integer  "user_id"
    t.integer  "location_id"
    t.integer  "item_id"
    t.string   "title"
    t.text     "description"
    t.string   "post_type",   :limit => 5
    t.string   "item_type",   :limit => 6
    t.datetime "date"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
