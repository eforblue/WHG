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

ActiveRecord::Schema.define(version: 20150720151606) do

  create_table "guesses", force: :cascade do |t|
    t.integer  "height",                   limit: 4
    t.integer  "weight_female_min",        limit: 4
    t.integer  "weight_male_min",          limit: 4
    t.integer  "weight_female_max",        limit: 4
    t.integer  "weight_male_max",          limit: 4
    t.integer  "scale_female_dominant",    limit: 4, default: 1000
    t.integer  "scale_male_nondominant",   limit: 4, default: 0
    t.integer  "scale_female_even",        limit: 4, default: 1000
    t.integer  "scale_male_even",          limit: 4, default: 1000
    t.integer  "scale_female_nondominant", limit: 4, default: 0
    t.integer  "scale_male_dominant",      limit: 4, default: 1000
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
  end

end
