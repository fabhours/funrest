class AddGameIdToMac < ActiveRecord::Migration
  def change
    add_column :macs, :game_id, :integer
  end
end
