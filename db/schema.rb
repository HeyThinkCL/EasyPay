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

ActiveRecord::Schema.define(version: 20170624212431) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comercios", force: :cascade do |t|
    t.string "nombre"
    t.string "codigo"
  end

  create_table "ocps", force: :cascade do |t|
    t.integer  "comercio_id"
    t.integer  "orden_id"
    t.integer  "producto_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["comercio_id"], name: "index_ocps_on_comercio_id", using: :btree
    t.index ["orden_id"], name: "index_ocps_on_orden_id", using: :btree
    t.index ["producto_id"], name: "index_ocps_on_producto_id", using: :btree
  end

  create_table "ordenes", force: :cascade do |t|
    t.float   "monto"
    t.date    "fecha_autorizacion"
    t.integer "usuario_id"
    t.index ["usuario_id"], name: "index_ordenes_on_usuario_id", using: :btree
  end

  create_table "productos", force: :cascade do |t|
    t.string  "nombre"
    t.integer "precio"
    t.integer "comercio_id"
    t.index ["comercio_id"], name: "index_productos_on_comercio_id", using: :btree
  end

  create_table "usuarios", force: :cascade do |t|
    t.string  "nombre"
    t.string  "apellido_paterno"
    t.string  "apellido_materno"
    t.string  "email"
    t.string  "password_digest"
    t.integer "comercio_id"
    t.index ["comercio_id"], name: "index_usuarios_on_comercio_id", using: :btree
    t.index ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  end

end
