class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :title
      t.string :comment
      t.datetime :day

      t.timestamps
    end
  end
end
