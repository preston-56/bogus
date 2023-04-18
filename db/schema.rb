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

ActiveRecord::Schema[7.0].define(version: 2023_04_18_204935) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gps_logs", force: :cascade do |t|
    t.integer "merchandiser_id", null: false
    t.string "latitude"
    t.string "longitude"
    t.datetime "gpsStarted"
    t.datetime "gpsStopped"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchandisers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "salesManager_id", null: false
    t.integer "route_plan_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outlets", force: :cascade do |t|
    t.string "name"
    t.string "latitude"
    t.string "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_plan_details", force: :cascade do |t|
    t.integer "routePlan_id", null: false
    t.integer "merchandiser_id", null: false
    t.integer "outlet_id", null: false
    t.string "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "route_plans", force: :cascade do |t|
    t.integer "salesManager_id", null: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_managers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
