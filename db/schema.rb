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

ActiveRecord::Schema[7.0].define(version: 2022_05_31_195242) do
  create_table "enderecos", force: :cascade do |t|
    t.integer "cep"
    t.string "cidade"
    t.string "bairro"
    t.string "logradouro"
    t.string "complemento"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_enderecos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.integer "role", default: 0
    t.string "nome_completo"
    t.date "data_nascimento"
    t.integer "cpf"
    t.string "nome_mae"
    t.integer "telefone"
    t.string "email"
    t.string "password_digest"
    t.integer "num_sus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vacinacaos", force: :cascade do |t|
    t.string "desc_local"
    t.date "data"
    t.time "horario"
    t.integer "usuario_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "vacina_id", null: false
    t.index ["usuario_id"], name: "index_vacinacaos_on_usuario_id"
    t.index ["vacina_id"], name: "index_vacinacaos_on_vacina_id"
  end

  create_table "vacinas", force: :cascade do |t|
    t.string "nome_vacina"
    t.string "num_lote"
    t.date "data_validade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "enderecos", "usuarios"
  add_foreign_key "vacinacaos", "usuarios"
  add_foreign_key "vacinacaos", "vacinas"
end
