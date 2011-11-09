class Players < ActiveRecord::Migration
  def up
    create_table :players do |t|
      t.column :first_name, :string
      t.column :last_name, :string
      t.column :position, :string
      t.column :active, :boolean, :default => true
      t.column :first_game, :integer
      t.column :last_game, :integer
      t.column :points_per_game, :decimal, :precision => 5, :scale => 2
      t.column :cap, :decimal, :precision => 5, :scale => 2
      t.column :points, :integer
      t.column :fights, :integer
      t.column :plus_minus, :integer
      t.column :assists, :integer
      t.column :goals, :integer
      t.column :games, :integer
      t.references :franchise
    end
    add_index :players, :franchise_id
  end

  def down
    drop_table :players
  end
end
