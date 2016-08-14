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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20160813230027) do
=======
ActiveRecord::Schema.define(version: 20160813030452) do
>>>>>>> a69c1ab6c1bc3de38c2c4c361f6c0f2ce26f20b3

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

<<<<<<< HEAD
  create_table "opms", force: :cascade do |t|
    t.string   "sigla"
    t.string   "nome"
    t.integer  "cidade"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
=======
  create_table "gpms", id: false, force: :cascade do |t|
    t.integer  "id"
    t.integer  "id_opm"
    t.string   "sigla"
    t.string   "nome"
    t.integer  "id_endereco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "ativo"
>>>>>>> a69c1ab6c1bc3de38c2c4c361f6c0f2ce26f20b3
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
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
