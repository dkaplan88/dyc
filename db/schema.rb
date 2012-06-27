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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120627205545) do

  create_table "events", :force => true do |t|
    t.string   "headliner"
    t.string   "image"
    t.string   "full_lineup"
    t.string   "venue"
    t.string   "location"
    t.string   "date"
    t.string   "tickets"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "venue_website"
  end

  create_table "mlbs", :force => true do |t|
    t.string   "start"
    t.string   "time"
    t.string   "away"
    t.string   "home"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "starts", :force => true do |t|
    t.string   "time_start"
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "whitesoxes", :force => true do |t|
    t.string   "start"
    t.string   "time_start"
    t.string   "subject"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
