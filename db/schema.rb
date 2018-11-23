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

ActiveRecord::Schema.define(version: 2018_11_23_223451) do

  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.string "rg"
    t.string "cpf"
    t.date "dtnasc"
    t.string "telefone"
    t.string "celular"
    t.integer "sexo"
    t.integer "status"
    t.integer "referencia_aluno_id"
    t.integer "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_alunos_on_endereco_id"
    t.index ["referencia_aluno_id"], name: "index_alunos_on_referencia_aluno_id"
  end

  create_table "cursos", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "enderecos", force: :cascade do |t|
    t.string "cep"
    t.string "logradouro"
    t.integer "numero"
    t.string "complemento"
    t.string "bairro"
    t.string "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "galeria", force: :cascade do |t|
    t.string "foto"
    t.string "legenda"
    t.string "fotografo"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id"], name: "index_galeria_on_usuario_id"
  end

  create_table "matriculas", force: :cascade do |t|
    t.integer "aluno_id"
    t.integer "usuario_id"
    t.integer "turma_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["aluno_id"], name: "index_matriculas_on_aluno_id"
    t.index ["turma_id"], name: "index_matriculas_on_turma_id"
    t.index ["usuario_id"], name: "index_matriculas_on_usuario_id"
  end

  create_table "noticia", force: :cascade do |t|
    t.string "titulo"
    t.string "texto"
    t.string "foto"
    t.string "fotografo"
    t.integer "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "subtitulo"
    t.index ["usuario_id"], name: "index_noticia_on_usuario_id"
  end

  create_table "referencia_alunos", force: :cascade do |t|
    t.string "nome"
    t.string "telefone"
    t.string "celular"
    t.integer "endereco_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["endereco_id"], name: "index_referencia_alunos_on_endereco_id"
  end

  create_table "turmas", force: :cascade do |t|
    t.string "nome"
    t.integer "curso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["curso_id"], name: "index_turmas_on_curso_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome"
    t.integer "status"
    t.integer "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
    t.index ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true
  end

end
