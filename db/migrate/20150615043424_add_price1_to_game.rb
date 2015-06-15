class AddPrice1ToGame < ActiveRecord::Migration
  def change
    add_column :games, :price1, :integer
  end
end
