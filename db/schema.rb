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

ActiveRecord::Schema.define(version: 20141229204136) do

  create_table "tiras", force: true do |t|
    t.integer  "user_id"
    t.string   "titulo"
    t.string   "text1"
    t.string   "text2"
    t.string   "text3"
    t.string   "text4"
    t.string   "text5"
    t.string   "text6"
    t.integer  "dia"
    t.string   "mes"
    t.integer  "ano"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "aprobado"
    t.string   "personaje_cuadro1"
    t.string   "personaje_cuadro2"
    t.string   "personaje_cuadro3"
    t.string   "personaje_cuadro4"
    t.string   "personaje_cuadro5"
    t.string   "personaje_cuadro6"
    t.string   "texto_personaje_cuadro1"
    t.string   "texto_personaje_cuadro2"
    t.string   "texto_personaje_cuadro3"
    t.string   "texto_personaje_cuadro4"
    t.string   "texto_personaje_cuadro5"
    t.string   "texto_personaje_cuadro6"
  end

  add_index "tiras", ["user_id"], name: "index_tiras_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
