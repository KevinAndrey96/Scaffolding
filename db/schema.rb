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

ActiveRecord::Schema.define(version: 20170826154608) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "encargados", force: :cascade do |t|
    t.string "nombre"
    t.string "carrera"
    t.integer "semestre"
    t.bigint "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_encargados_on_proyecto_id"
  end

  create_table "patrocinadors", force: :cascade do |t|
    t.string "nombre"
    t.string "tipo"
    t.integer "telefono"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proyecto_patrocinadors", force: :cascade do |t|
    t.bigint "proyecto_id"
    t.bigint "patrocinador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patrocinador_id"], name: "index_proyecto_patrocinadors_on_patrocinador_id"
    t.index ["proyecto_id"], name: "index_proyecto_patrocinadors_on_proyecto_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.integer "presupuesto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutors", force: :cascade do |t|
    t.string "nombre"
    t.string "facultad"
    t.bigint "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_tutors_on_proyecto_id"
  end

  add_foreign_key "encargados", "proyectos"
  add_foreign_key "proyecto_patrocinadors", "patrocinadors"
  add_foreign_key "proyecto_patrocinadors", "proyectos"
  add_foreign_key "tutors", "proyectos"
end
