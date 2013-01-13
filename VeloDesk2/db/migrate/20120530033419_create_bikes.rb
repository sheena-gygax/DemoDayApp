class CreateBikes < ActiveRecord::Migration
  def change
    create_table :bikes do |t|
      t.string :style
      t.string :size
      t.string :image
      t.date :date_desired
      t.string :out
      t.date :expected_return
      t.string :first_choice
      t.string :second_choice

      t.timestamps
    end
  end
end
