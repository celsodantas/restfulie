# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100116230612) do

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "kind"
    t.integer  "qt",         :default => 0
    t.decimal  "price",      :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "orders", :force => true do |t|
    t.string   "state"
    t.decimal  "amount",     :default => 0.0
    t.boolean  "payed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payments", :force => true do |t|
    t.string   "state"
    t.decimal  "amount",     :default => 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

end