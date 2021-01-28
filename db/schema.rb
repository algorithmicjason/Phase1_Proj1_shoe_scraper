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
    t.integer "contract_id"
    t.integer "company_id"
    t.index ["company_id"], name: "index_candidates_on_company_id"
    t.index ["contract_id"], name: "index_candidates_on_contract_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "num_of_employees"
    t.string "year_established"
    t.integer "listing_id"
    t.integer "candidate_id"
    t.integer "contract_id"
    t.index ["candidate_id"], name: "index_companies_on_candidate_id"
    t.index ["contract_id"], name: "index_companies_on_contract_id"
    t.index ["listing_id"], name: "index_companies_on_listing_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer "recruiter_id"
    t.integer "candidate_id"
    t.integer "company_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["candidate_id"], name: "index_contracts_on_candidate_id"
    t.index ["company_id"], name: "index_contracts_on_company_id"
    t.index ["recruiter_id"], name: "index_contracts_on_recruiter_id"
  end

  create_table "listings", force: :cascade do |t|
    t.string "position"
    t.string "description"
    t.integer "salary"
    t.datetime "date_posted"
    t.integer "company_id"
    t.index ["company_id"], name: "index_listings_on_company_id"
  end

  create_table "recruiters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.integer "experience"
    t.string "gender"
    t.integer "contract_id"
    t.integer "candidate_id"
    t.integer "company_id"
    t.index ["candidate_id"], name: "index_recruiters_on_candidate_id"
    t.index ["company_id"], name: "index_recruiters_on_company_id"
    t.index ["contract_id"], name: "index_recruiters_on_contract_id"
  end

end
