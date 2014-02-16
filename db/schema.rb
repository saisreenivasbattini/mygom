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

ActiveRecord::Schema.define(version: 20140216180213) do

  create_table "test_req_transitions", force: true do |t|
    t.string  "to_state"
    t.text    "metadata",    default: "{}"
    t.integer "sort_key"
    t.integer "test_req_id"
  end

  add_index "test_req_transitions", ["sort_key", "test_req_id"], name: "index_test_req_transitions_on_sort_key_and_test_req_id", unique: true
  add_index "test_req_transitions", ["test_req_id"], name: "index_test_req_transitions_on_test_req_id"

  create_table "test_reqs", force: true do |t|
    t.string   "req_type"
    t.string   "unit"
    t.string   "site"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
