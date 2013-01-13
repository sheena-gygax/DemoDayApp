class CreateNeeds < ActiveRecord::Migration
  def change
    create_table :needs do |t|
      t.string :item
      t.integer :price

      t.timestamps
    end
  end
end
