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

ActiveRecord::Schema.define(version: 20161013210924) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "approval_solicitations", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "request_solicitation_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "bulletins", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: :cascade do |t|
    t.string   "name"
    t.string   "uf"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.boolean  "actived"
    t.integer  "opm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "daily_bulletins", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "informative_id"
    t.integer  "justice_discipline_id"
    t.integer  "instruction_bulletin_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "extra_hour_distributions", force: :cascade do |t|
    t.integer  "city_id"
    t.integer  "how_many_hours"
    t.date     "date_begin"
    t.date     "date_end"
    t.integer  "gpm_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "functions", force: :cascade do |t|
    t.string   "initials"
    t.string   "name"
    t.integer  "vacancies"
    t.boolean  "actived"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "manager_function_id"
  end

  create_table "gpms", force: :cascade do |t|
    t.string   "initials"
    t.string   "name"
    t.boolean  "actived"
    t.integer  "city_id"
    t.integer  "platoon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imported_files", force: :cascade do |t|
    t.string   "id_user"
    t.string   "nome"
    t.string   "posto"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "user_id"
    t.string   "imported_file_path"
    t.string   "title"
    t.string   "description"
    t.string   "graduation"
    t.string   "bulletin_name"
    t.integer  "id_func"
    t.string   "opm"
    t.string   "name_func"
    t.date     "bulletin_date"
  end

  create_table "informatives", force: :cascade do |t|
    t.integer  "text_informative_id"
    t.date     "date_begin"
    t.date     "date_end"
    t.string   "type"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "instructions", force: :cascade do |t|
    t.string   "_bulletin"
    t.string   "description"
    t.date     "date_begin"
    t.date     "date_end"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "justice_disciplines", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "opms", force: :cascade do |t|
    t.string   "initials"
    t.string   "name"
    t.integer  "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "platoons", force: :cascade do |t|
    t.string   "name"
    t.integer  "city_id"
    t.integer  "gpm_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pointing_hours", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "date_hour_begin"
    t.date     "date_hour_end"
    t.integer  "status"
    t.integer  "service_type_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "post_graduations", force: :cascade do |t|
    t.string   "initials"
    t.string   "name"
    t.boolean  "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "actived"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "request_solicitations", force: :cascade do |t|
    t.string   "description"
    t.date     "date_begin"
    t.date     "date_end"
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "type_solicitation"
  end

  create_table "service_types", force: :cascade do |t|
    t.string   "initials"
    t.string   "name"
    t.integer  "function_id"
    t.integer  "uniform_id"
    t.boolean  "actived"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "temporary_replacements", force: :cascade do |t|
    t.integer  "substitute_id_func"
    t.integer  "occupant_id_func"
    t.string   "unavailability_reason"
    t.date     "date_begin"
    t.date     "date_end"
    t.integer  "buletim_number"
    t.boolean  "status"
    t.integer  "exemption_clearence_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "text_informatives", force: :cascade do |t|
    t.string   "description"
    t.string   "type"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "trainees", force: :cascade do |t|
    t.string   "name"
    t.string   "cpf"
    t.string   "gender"
    t.date     "birth"
    t.integer  "semester"
    t.integer  "city_id"
    t.string   "email"
    t.string   "bank_agency_wallet"
    t.integer  "worked_days"
    t.integer  "user_id_last_change"
    t.integer  "transport_voucher"
    t.integer  "contract_term"
    t.integer  "worked_hours"
    t.string   "neighborhood"
    t.string   "zip_code"
    t.boolean  "actived"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.date     "date_final_contract"
  end

  create_table "uniforms", force: :cascade do |t|
    t.string   "initials"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                default: "", null: false
    t.string   "username",            default: "", null: false
    t.string   "encrypted_password",  default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "failed_attempts"
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "address"
    t.string   "neighborhood"
    t.integer  "city_id"
    t.string   "state"
    t.string   "zip_code"
    t.boolean  "actived"
    t.integer  "id_func"
    t.string   "war_name"
    t.string   "gender"
    t.date     "birth"
    t.integer  "post_graduation_id"
    t.integer  "profile_id"
    t.integer  "current_profile"
    t.string   "image_path"
    t.string   "cpf"
    t.string   "email"
    t.integer  "function_id"
    t.integer  "platoon_id"
  end

  add_foreign_key "temporary_replacements", "users", column: "substitute_id_func"
end
