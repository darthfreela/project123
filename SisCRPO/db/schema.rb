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

ActiveRecord::Schema.define(version: 20160912223259) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_user_ref_to_pointing_hours", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "add_user_ref_to_pointing_hours", ["user_id"], name: "index_add_user_ref_to_pointing_hours_on_user_id", using: :btree

  create_table "companies", force: :cascade do |t|
    t.string   "nome"
    t.string   "cidade"
    t.string   "unidade"
    t.boolean  "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disthoraextras", force: :cascade do |t|
    t.integer  "idUnidade"
    t.string   "unidade"
    t.string   "cidade"
    t.decimal  "numeroDeHoras"
    t.date     "dataInicio"
    t.date     "dataTermino"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "distribuicao_horas_extras", force: :cascade do |t|
    t.integer  "idUnidade"
    t.string   "unidade"
    t.string   "cidade"
    t.decimal  "numeroDeHoras"
    t.date     "dataInicio"
    t.date     "dataTermino"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "estagiarios", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "sexo"
    t.date     "data_nascimento"
    t.string   "semestre"
    t.string   "endereco"
    t.string   "email"
    t.string   "agcc"
    t.integer  "dias_trabalhados"
    t.integer  "usuario_ultima_alteracao"
    t.integer  "vale_transporte"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.date     "vigencia_contrato"
    t.float    "horas_trabalhadas"
  end

  create_table "ferias", force: :cascade do |t|
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

  create_table "gpms", force: :cascade do |t|
    t.integer  "idOpm"
    t.string   "sigla"
    t.string   "nome"
    t.integer  "cidade"
    t.boolean  "ativo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "opm_id"
    t.string   "descricao"
  end

  add_index "gpms", ["opm_id"], name: "index_gpms_on_opm_id", using: :btree

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
    t.integer  "user_id"
  end

  create_table "opms", force: :cascade do |t|
    t.string   "sigla"
    t.string   "nome"
    t.integer  "cidade"
    t.text     "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pelotaos", force: :cascade do |t|
    t.string   "nome"
    t.string   "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gpm_id"
  end

  create_table "pointing_hours", force: :cascade do |t|
    t.integer  "id_func"
    t.date     "data_inicio"
    t.date     "hora_inicio"
    t.date     "data_fim"
    t.date     "hora_fim"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.boolean  "comfirmacao"
    t.integer  "idTipoServico"
    t.integer  "tipo_servico_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "nome"
    t.string   "tipo_usuario"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "release_vacations", force: :cascade do |t|
    t.date     "inicial_date"
    t.date     "final_date"
    t.boolean  "approved"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "siglas", force: :cascade do |t|
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "solicitacao_fers", force: :cascade do |t|
    t.integer  "id_func"
    t.date     "data_inicial"
    t.date     "data_final"
    t.boolean  "aprovado"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "temporary_replacements", force: :cascade do |t|
    t.integer  "idFuncOcupante"
    t.integer  "idFuncSubstituto"
    t.string   "situacao"
    t.string   "motivoIndisponibilidade"
    t.integer  "idSoliDispAfastamento"
    t.date     "dataAssuncao"
    t.date     "dataDispensa"
    t.integer  "idBoletim"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "nomeOcupante"
    t.integer  "idGraduacaoOcupante"
    t.integer  "idFuncaoOcupante"
    t.string   "nomeSubstituto"
    t.integer  "idFuncaoSubstituto"
    t.integer  "idGraduacaoSubstituto"
  end

  create_table "tipo_servicos", force: :cascade do |t|
    t.string   "sigla"
    t.string   "nome"
    t.integer  "idFuncao"
    t.integer  "idUniformes"
    t.boolean  "ativo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "uniforms", force: :cascade do |t|
    t.string   "sigla"
    t.string   "uniforme"
    t.string   "descricao"
    t.date     "data_alteracao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
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
    t.string   "email",               limit: 256
    t.string   "sexo",                limit: 256
    t.date     "dataNascimento"
    t.integer  "function_id"
    t.integer  "idUsuarioFuncao"
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "users_functions", force: :cascade do |t|
    t.integer  "functions_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "add_user_ref_to_pointing_hours", "users"
  add_foreign_key "gpms", "opms"
  add_foreign_key "licencas", "users"
  add_foreign_key "pointing_hours", "tipo_servicos"
  add_foreign_key "release_vacations", "users"
end
