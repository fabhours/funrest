class AddBonusToKartu < ActiveRecord::Migration
  def change
    add_column :kartus, :freegame, :integer
    add_column :kartus, :eticket, :integer
  end
end
