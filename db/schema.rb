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

ActiveRecord::Schema.define(version: 20150307234610) do

  create_table "figure_categories", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "figure_categories", ["name"], name: "index_figure_categories_on_name", unique: true

  create_table "figure_images", force: true do |t|
    t.string   "url",        null: false
    t.string   "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "figure_id"
  end

  add_index "figure_images", ["figure_id"], name: "index_figure_images_on_figure_id", unique: true
  add_index "figure_images", ["size"], name: "index_figure_images_on_size"
  add_index "figure_images", ["url"], name: "index_figure_images_on_url", unique: true

# Could not dump table "figures" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "vote_types", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vote_types", ["name"], name: "index_vote_types_on_name", unique: true

  create_table "votes", force: true do |t|
    t.integer  "vote_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "figure_id"
  end

  add_index "votes", ["figure_id"], name: "index_votes_on_figure_id"
  add_index "votes", ["vote_type_id"], name: "index_votes_on_vote_type_id"

end
