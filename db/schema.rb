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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160912033506) do

  create_table "jbccs", force: :cascade do |t|
    t.string   "name"
    t.string   "kanji"
    t.string   "sex"
    t.string   "introductor"
    t.date     "create_date"
    t.string   "support"
    t.string   "service"
    t.string   "address"
    t.string   "remark"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "tel"
    t.string   "email"
    t.string   "company"
    t.string   "account_name"
    t.integer  "account_number"
    t.string   "image"
  end

end
