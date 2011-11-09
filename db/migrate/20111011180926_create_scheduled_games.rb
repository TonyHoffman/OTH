class CreateScheduledGames < ActiveRecord::Migration
  def change
    create_table :scheduled_games do |t|
      t.string :opponent
      t.datetime :date
      t.references :franchise
      t.boolean :is_scored

      t.timestamps
    end
    add_index :scheduled_games, :franchise_id
  end
end
