class CreateFans < ActiveRecord::Migration
  def change
    create_table :fans do |t|
      t.string :email
      t.integer :fan
      t.integer :league_id
      t.string :password
      t.integer :fan_id
      t.string :user_name
      t.boolean :is_admin

      t.timestamps
    end
  end
end
