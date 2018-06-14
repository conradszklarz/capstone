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

ActiveRecord::Schema.define(version: 20180613222130) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_parts", force: :cascade do |t|
    t.integer "maintenance_event_id"
    t.datetime "date"
    t.string "part_number"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "car_services", force: :cascade do |t|
    t.integer "car_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer "user_id"
    t.integer "year"
    t.string "make"
    t.string "model"
    t.integer "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenance_events", force: :cascade do |t|
    t.integer "car_id"
    t.string "provider"
    t.decimal "price"
    t.datetime "date"
    t.decimal "mileage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "complete"
  end

  create_table "maintenance_services", force: :cascade do |t|
    t.integer "maintenance_event_id"
    t.integer "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.decimal "mileage_marker"
    t.integer "time_marker"
    t.string "time_increment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
