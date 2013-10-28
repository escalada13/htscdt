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

ActiveRecord::Schema.define(version: 20131028230248) do

  create_table "htscdts", force: true do |t|
    t.string   "htsus"
    t.date     "date"
    t.string   "author"
    t.string   "verified_by"
    t.string   "inv_description"
    t.string   "gen_eng_description"
    t.string   "gen_esp_description"
    t.string   "early_triggers"
    t.string   "legal_authority"
    t.text     "comments"
    t.string   "confidence"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
