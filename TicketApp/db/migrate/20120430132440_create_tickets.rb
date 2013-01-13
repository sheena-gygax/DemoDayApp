class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.float :price
      t.date :date
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip
      t.string :genre

      t.timestamps
    end
  end
end
