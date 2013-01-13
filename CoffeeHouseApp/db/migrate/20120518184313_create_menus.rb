class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :size
      t.string :roast

      t.timestamps
    end
  end
end
