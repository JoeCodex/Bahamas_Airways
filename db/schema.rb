ActiveRecord::Schema.define(version: 20150120150238) do

  create_table "flights", force: :cascade do |t|
    t.datetime "departure"
    t.datetime "arrival"
    t.string   "destination"
    t.decimal  "bagage_allowance"
    t.integer  "capacity"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "seats", force: :cascade do |t|
    t.integer  "flight_id"
    t.string   "name"
    t.decimal  "baggage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
