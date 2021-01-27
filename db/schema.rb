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

ActiveRecord::Schema.define(version: 2021_01_27_220728) do

  create_table "candidates", force: :cascade do |t|
    t.string "name"
    t.string "skillset"
    t.string "desired_salary"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "num_of_employees"
    t.string "year_established"
  end

  create_table "contracts", force: :cascade do |t|
  end

  create_table "listings", force: :cascade do |t|
    t.string "position"
    t.string "description"
    t.integer "salary"
    t.datetime "date_posted"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "experience"
    t.string "gender"
  end

end
