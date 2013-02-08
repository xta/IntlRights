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

ActiveRecord::Schema.define(:version => 20130208222344) do

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.string   "alpha2"
    t.string   "alpha3"
    t.string   "numeric"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "countries", ["name", "alpha2", "alpha3", "numeric"], :name => "country_first_index"

  create_table "policies", :force => true do |t|
    t.integer  "video_id"
    t.integer  "country_id"
    t.string   "rights"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "policies", ["video_id", "country_id", "rights"], :name => "policy_first_index"

  create_table "videos", :force => true do |t|
    t.string   "vid"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "videos", ["vid"], :name => "video_first_index"

end
