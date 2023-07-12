# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_07_06_220307) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "computer_stores", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.boolean "repairs"
    t.integer "rank"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "computers", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.boolean "on_sale"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "computer_store_id", null: false
    t.index ["computer_store_id"], name: "index_computers_on_computer_store_id"
  end

  add_foreign_key "computers", "computer_stores"
end
