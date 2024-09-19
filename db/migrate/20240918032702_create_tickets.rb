class CreateTickets < ActiveRecord::Migration[7.2]
  def change
    create_table :tickets do |t|
      t.text :description
      t.string :ticket_type
      t.string :photos
      t.text :notes
      t.references :customer, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
