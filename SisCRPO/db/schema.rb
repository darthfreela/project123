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

ActiveRecord::Schema.define(version: 20160827033735) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "ferias", force: :cascade do |t|
    t.integer  "idFunc"
    t.date     "dataInicial"
    t.date     "dataFinal"
    t.boolean  "aprovado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "fers", force: :cascade do |t|
    t.integer  "idFunc"
    t.date     "dataInicial"
    t.date     "dataFinal"
    t.boolean  "aprovado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "functions", force: :cascade do |t|
    t.string   "sigla"
    t.string   "funcao"
    t.integer  "vagas"
    t.date     "data_alteracao"
    t.boolean  "ativo"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "gpms", id: false, force: :cascade do |t|
    t.integer  "id"
    t.integer  "id_opm"
    t.string   "sigla"
    t.string   "nome"
    t.integer  "id_endereco"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "ativo"
  end

  create_table "licencas", force: :cascade do |t|
    t.integer  "idFunc"
    t.string   "nome"
    t.string   "tipo"
    t.string   "ordem"
    t.date     "dataInicial"
    t.date     "dataFinal"
    t.integer  "dias"
    t.boolean  "aprovado"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "opms", force: :cascade do |t|
    t.string   "sigla"
    t.string   "nome"
    t.integer  "cidade"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                            default: "", null: false
    t.string   "username",                        default: "", null: false
    t.string   "encrypted_password",              default: "", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "failed_attempts"
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "cidade"
    t.string   "estado"
    t.string   "cep"
    t.boolean  "ativo"
    t.integer  "idFunc",              limit: 8
    t.integer  "cpf",                 limit: 8
    t.string   "nomeGuerra",          limit: 256
    t.string   "imagemUsuario",       limit: 256
    t.integer  "idFuncao",            limit: 8
    t.string   "email",               limit: 256
    t.string   "sexo",                limit: 256
    t.date     "dataNascimento"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end
