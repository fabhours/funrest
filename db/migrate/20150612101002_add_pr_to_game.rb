class AddPrToGame < ActiveRecord::Migration
  def change
    add_column :games, :price2, :integer
    add_column :games, :price3, :integer
    add_column :games, :price4, :integer
  end
end
