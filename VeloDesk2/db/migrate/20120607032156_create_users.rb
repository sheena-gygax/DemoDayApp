class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :status
      t.string :password_digest
      t.integer :bike_id

      t.timestamps
    end
  end
end
