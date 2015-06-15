class AddSaldoNBonusToKartu < ActiveRecord::Migration
  def change
  	add_column :kartus, :saldo, :integer
    add_column :kartus, :bonus, :integer
  end
end
