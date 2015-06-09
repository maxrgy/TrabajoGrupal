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

ActiveRecord::Schema.define(version: 20150608234915) do

  create_table "addresses", force: :cascade do |t|
    t.integer  "co_direccion", limit: 4,   null: false
    t.string   "no_direccion", limit: 255
    t.integer  "co_distrito",  limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "addresses", ["co_direccion"], name: "index_addresses_on_co_direccion", using: :btree

  create_table "client_addresses", force: :cascade do |t|
    t.string   "email",        limit: 255, null: false
    t.integer  "co_direccion", limit: 4,   null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "client_addresses", ["co_direccion"], name: "index_client_addresses_on_co_direccion", using: :btree
  add_index "client_addresses", ["email"], name: "index_client_addresses_on_email", using: :btree

  create_table "clients", force: :cascade do |t|
    t.string   "email",      limit: 255, null: false
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "clients", ["email"], name: "index_clients_on_email", using: :btree

  create_table "dishes", force: :cascade do |t|
    t.integer  "co_plato",     limit: 4,   null: false
    t.string   "no_plato",     limit: 255
    t.string   "no_tipoplato", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "dishes", ["co_plato"], name: "index_dishes_on_co_plato", using: :btree

  create_table "districts", force: :cascade do |t|
    t.string   "co_distrito", limit: 255, null: false
    t.string   "no_distrito", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "districts", ["co_distrito"], name: "index_districts_on_co_distrito", using: :btree

  create_table "menu_details", force: :cascade do |t|
    t.integer  "co_detallemenu", limit: 4, null: false
    t.integer  "co_local",       limit: 4
    t.integer  "qt_precio",      limit: 4
    t.integer  "co_menu",        limit: 4, null: false
    t.integer  "co_plato",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "menu_details", ["co_detallemenu"], name: "index_menu_details_on_co_detallemenu", using: :btree

  create_table "menus", force: :cascade do |t|
    t.integer  "co_menu",    limit: 4, null: false
    t.date     "fe_fecha"
    t.integer  "qt_menu",    limit: 4
    t.integer  "co_local",   limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "menus", ["co_menu"], name: "index_menus_on_co_menu", using: :btree

  create_table "order_details", force: :cascade do |t|
    t.integer  "co_detallepedido", limit: 4
    t.integer  "co_plato",         limit: 4
    t.string   "no_tipoplato",     limit: 255
    t.string   "string",           limit: 255
    t.integer  "qt_precio",        limit: 4
    t.integer  "qt_cantidad",      limit: 4
    t.integer  "co_pedido",        limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "order_details", ["co_detallepedido"], name: "index_order_details_on_co_detallepedido", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "co_pedido",     limit: 4,   null: false
    t.string   "email",         limit: 255
    t.integer  "qt_montototal", limit: 4
    t.string   "estado",        limit: 255
    t.integer  "co_local",      limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "orders", ["co_pedido"], name: "index_orders_on_co_pedido", using: :btree

  create_table "restaurants", force: :cascade do |t|
    t.integer  "co_local",    limit: 4,   null: false
    t.string   "name",        limit: 255
    t.integer  "co_distrito", limit: 4
    t.string   "email",       limit: 255
    t.string   "password",    limit: 255
    t.string   "telefono",    limit: 255
    t.string   "direccion",   limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "restaurants", ["co_local"], name: "index_restaurants_on_co_local", using: :btree

end
