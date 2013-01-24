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

ActiveRecord::Schema.define(:version => 20121226232500) do

  create_table "authorities", :force => true do |t|
    t.string   "authority_name"
    t.string   "registuser"
    t.string   "updateuser"
    t.integer  "lock_version"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "mst_jinins", :force => true do |t|
    t.string   "name_sei"
    t.string   "neme_mei"
    t.string   "kana_sei"
    t.string   "kana_mei"
    t.string   "contact1"
    t.string   "contact2"
    t.string   "contact3"
    t.string   "mailaddress1"
    t.string   "mailaddress2"
    t.string   "mailaddress3"
    t.integer  "authoritylevel"
    t.string   "password"
    t.boolean  "punchnotify"
    t.boolean  "sendareamail"
    t.string   "registuser"
    t.datetime "registdate"
    t.string   "updateuser"
    t.datetime "updatedate"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "lock_version",   :default => 0, :null => false
    t.integer  "authority_id",   :default => 1, :null => false
  end

end
