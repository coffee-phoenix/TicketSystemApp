class CreateMachines < ActiveRecord::Migration[7.2]
  def change
    create_table :machines do |t|
      t.string :make
      t.string :model
      t.string :serial_number
      t.text :description
      t.datetime :last_service_date
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
