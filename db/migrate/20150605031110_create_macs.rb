class CreateMacs < ActiveRecord::Migration
  def change
    create_table :macs do |t|
      t.string :address

      t.timestamps
    end
  end
end
