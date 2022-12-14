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

ActiveRecord::Schema[7.0].define(version: 2022_10_18_201830) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dominios", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_aaaas", force: :cascade do |t|
    t.string "nombre"
    t.string "redirige"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_as", force: :cascade do |t|
    t.string "nombre"
    t.string "redirige"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_cnames", force: :cascade do |t|
    t.string "nombre"
    t.string "redirige"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_mxes", force: :cascade do |t|
    t.string "nombre"
    t.string "redirige"
    t.integer "prioridad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_srvs", force: :cascade do |t|
    t.string "servicio"
    t.string "protocolo"
    t.string "nombre"
    t.string "objetivo"
    t.integer "prioridad"
    t.integer "peso"
    t.integer "puerto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_txts", force: :cascade do |t|
    t.string "nombre"
    t.string "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "shopify_domain", null: false
    t.string "shopify_token", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "access_scopes"
    t.index ["shopify_domain"], name: "index_shops_on_shopify_domain", unique: true
  end

end
