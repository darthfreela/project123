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
ActiveRecord::Schema.define(version: 20161003172730) do
=======
<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20161003140305) do
=======
ActiveRecord::Schema.define(version: 20161003211640) do
>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
>>>>>>> 0be2a2ad183bdd6ada5898683ed37b14f083f254

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_user_ref_to_pointing_hours", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "add_user_ref_to_pointing_hours", ["user_id"], name: "index_add_user_ref_to_pointing_hours_on_user_id", using: :btree

  create_table "approval_unavailability_and_removals", force: :cascade do |t|
    t.integer  "users_id"
    t.integer  "licencas_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

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

<<<<<<< HEAD
  create_table "gpms", force: :cascade do |t|
    t.integer  "idOpm"
=======
  create_table "gpms", id: false, force: :cascade do |t|
    t.integer  "id"
>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
    t.string   "sigla"
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
<<<<<<< HEAD
    t.integer  "opm_id"
    t.string   "descricao"
  end

  add_index "gpms", ["opm_id"], name: "index_gpms_on_opm_id", using: :btree

=======
    t.boolean  "ativo"
    t.string   "cidade"
    t.text     "descricao"
  end

<<<<<<< HEAD
  create_table "import_files", force: :cascade do |t|
    t.string   "id_user"
    t.string   "nome"
    t.string   "posto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

=======
>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
>>>>>>> 0be2a2ad183bdd6ada5898683ed37b14f083f254
  create_table "import_newsletters", force: :cascade do |t|
    t.string   "id_user"
    t.string   "nome"
    t.string   "posto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "import_report_cards", force: :cascade do |t|
    t.string   "id_user"
    t.string   "nome"
    t.string   "posto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imported_files", force: :cascade do |t|
    t.string   "imported_file"
    t.string   "generated_file"
    t.string   "log"
    t.integer  "user_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
<<<<<<< HEAD
  end

  create_table "informative_text_daily_bulletins", force: :cascade do |t|
    t.string   "type_info"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
=======
>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
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
    t.integer  "tipo_servico_id"
  end

  create_table "postograduacaos", force: :cascade do |t|
    t.string   "sigla"
    t.string   "nomePostoGraduacao"
    t.boolean  "ativo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "postograduacao_id"
  end

  create_table "release_vacations", force: :cascade do |t|
    t.date     "inicial_date"
    t.date     "final_date"
    t.boolean  "approved"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "user_id"
  end

  create_table "request_dispenses", force: :cascade do |t|
    t.string   "solicitacao"
    t.date     "data_inicio"
    t.date     "data_fim"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "aprovado"
    t.string   "descricao_superior"
    t.integer  "approved"
  end

  create_table "rh_license_approvals", force: :cascade do |t|
    t.integer  "id_func"
    t.string   "nome_servidor"
    t.string   "posto_graduacao"
    t.string   "motivo"
    t.string   "funcao"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.date     "data_inicio"
    t.date     "data_termino"
    t.boolean  "status"
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

<<<<<<< HEAD
=======
  create_table "subst_temps", force: :cascade do |t|
    t.integer  "idFuncSubstituido"
    t.integer  "idFuncSubstituto"
    t.string   "motivIndisponibilidade"
    t.date     "dataInicial"
    t.date     "dataFinal"
    t.integer  "nrBoletim"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
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
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "initials"
    t.string   "name"
    t.string   "description"
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
    t.string   "email",               limit: 256
<<<<<<< HEAD
    t.string   "sexo",                limit: 256
    t.date     "dataNascimento"
    t.integer  "function_id"
    t.integer  "idUsuarioFuncao"
=======
    t.integer  "function_id"
    t.string   "address"
    t.string   "neighborhood"
    t.integer  "city_id"
    t.string   "state"
    t.string   "zip_code"
    t.boolean  "actived"
    t.integer  "id_func"
    t.string   "war_name"
    t.string   "gender"
    t.string   "birth"
    t.integer  "post_graduation_id"
    t.string   "profile_id"
>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
  end

  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

  create_table "users_functions", force: :cascade do |t|
    t.integer  "functions_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "add_user_ref_to_pointing_hours", "users"
<<<<<<< HEAD
  add_foreign_key "gpms", "opms"
=======
>>>>>>> 2fd806f74bf39eccbd5ecb464a431a4301165f4c
  add_foreign_key "imported_files", "users"
  add_foreign_key "licencas", "users"
  add_foreign_key "pointing_hours", "tipo_servicos"
  add_foreign_key "profiles", "postograduacaos"
  add_foreign_key "release_vacations", "users"
  add_foreign_key "request_dispenses", "users"
end
