class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :item
      t.string :location
      t.float :price
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
