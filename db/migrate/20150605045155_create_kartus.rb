class CreateKartus < ActiveRecord::Migration
  def change
    create_table :kartus do |t|
      t.string :nomor

      t.timestamps
    end
  end
end
