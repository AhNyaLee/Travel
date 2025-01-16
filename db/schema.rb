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

ActiveRecord::Schema[8.0].define(version: 2025_01_15_202748) do
  create_table "client_lists", force: :cascade do |t|
    t.integer "id_client"
    t.text "name"
    t.text "surname"
    t.text "patronymic"
    t.text "birthday"
    t.text "email"
    t.text "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id_client"], name: "index_client_lists_on_id_client"
  end

  create_table "countries", force: :cascade do |t|
    t.text "country_code"
    t.text "name"
    t.text "language"
    t.text "currency"
    t.text "timezone"
    t.text "capital"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "histore_orders", force: :cascade do |t|
    t.integer "number_order"
    t.text "name"
    t.text "start_date"
    t.text "end_date"
    t.integer "price"
    t.integer "id_client"
    t.integer "id_country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end
end
