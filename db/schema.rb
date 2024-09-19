
ActiveRecord::Schema[7.2].define(version: 2024_09_18_032735) do
  create_table "customers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "machines", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "serial_number"
    t.text "description"
    t.datetime "last_service_date"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_machines_on_customer_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ticket_tags", force: :cascade do |t|
    t.integer "ticket_id", null: false
    t.integer "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_ticket_tags_on_tag_id"
    t.index ["ticket_id"], name: "index_ticket_tags_on_ticket_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.text "description"
    t.string "ticket_type"
    t.string "photos"
    t.text "notes"
    t.integer "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_tickets_on_customer_id"
    t.index ["machine_id"], name: "index_tickets_on_machine_id"
  end

  add_foreign_key "machines", "customers"
  add_foreign_key "ticket_tags", "tags"
  add_foreign_key "ticket_tags", "tickets"
  add_foreign_key "tickets", "customers"
  add_foreign_key "tickets", "machines"
end
