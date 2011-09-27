class RemoveColumn < ActiveRecord::Migration
  def up
    remove_column :fans, :fan_id
  end

  def down
    add_column :fans, :fan_id, :int
  end
end
