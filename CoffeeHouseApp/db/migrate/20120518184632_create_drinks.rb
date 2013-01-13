class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drink do |t|
      t.string :name
      t.integer :cost
      t.integer :menu_id

      t.timestamps
    end
  end
end
