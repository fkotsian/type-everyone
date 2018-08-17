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

ActiveRecord::Schema.define(version: 20180817165724) do

  create_table "figure_categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_figure_categories_on_name", unique: true
  end

  create_table "figure_images", force: :cascade do |t|
    t.string "url", null: false
    t.string "size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "figure_id"
    t.string "uploaded_by"
    t.string "uploaded"
    t.index ["figure_id"], name: "index_figure_images_on_figure_id", unique: true
    t.index ["size"], name: "index_figure_images_on_size"
    t.index ["url"], name: "index_figure_images_on_url", unique: true
  end

  create_table "figures", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "figure_category_id"
    t.string "description"
    t.integer "mythos_id"
    t.index ["figure_category_id"], name: "index_figures_on_figure_category_id"
    t.index ["mythos_id"], name: "index_figures_on_mythos_id"
    t.index ["name"], name: "index_figures_on_name", unique: true
  end

  create_table "mythoi", force: :cascade do |t|
    t.string "name"
    t.integer "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "vote_types", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_vote_types_on_name", unique: true
  end

  create_table "votes", force: :cascade do |t|
    t.integer "vote_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "figure_id"
    t.index ["figure_id"], name: "index_votes_on_figure_id"
    t.index ["vote_type_id"], name: "index_votes_on_vote_type_id"
  end

end
