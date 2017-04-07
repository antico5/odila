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

ActiveRecord::Schema.define(version: 20170407164355) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "centro_de_denuncias", force: :cascade do |t|
    t.string   "direccion"
    t.string   "ciudad"
    t.integer  "pais_id"
    t.text     "telefonos"
    t.string   "email"
    t.string   "website"
    t.text     "fiscales"
    t.string   "twitter"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pais_id"], name: "index_centro_de_denuncias_on_pais_id", using: :btree
  end

  create_table "denuncias", force: :cascade do |t|
    t.date     "fecha"
    t.integer  "tipo_persona"
    t.integer  "delito_id"
    t.integer  "pais_id"
    t.integer  "accion_tomada"
    t.integer  "razon_no_denunciar"
    t.integer  "rango_edad"
    t.integer  "genero"
    t.integer  "educacion"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["delito_id"], name: "index_denuncias_on_delito_id", using: :btree
    t.index ["pais_id"], name: "index_denuncias_on_pais_id", using: :btree
  end

  create_table "paises", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "centro_de_denuncias", "paises"
end
