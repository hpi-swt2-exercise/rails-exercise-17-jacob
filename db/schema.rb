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

ActiveRecord::Schema.define(version: 20171109212149) do

  create_table "authors", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "homepage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_papers", id: false, force: :cascade do |t|
    t.integer "author_id", null: false
    t.integer "paper_id",  null: false
  end

  add_index "authors_papers", ["author_id", "paper_id"], name: "index_authors_papers_on_author_id_and_paper_id"
  add_index "authors_papers", ["paper_id", "author_id"], name: "index_authors_papers_on_paper_id_and_author_id"

  create_table "papers", force: :cascade do |t|
    t.string   "title"
    t.string   "venue"
    t.integer  "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
