class ChangeColumnToBitcoin < ActiveRecord::Migration[5.2]
  def up
    change_column :bitcoins, :date_time, :timestamp, null: false
  end

  def down
    change_column :bitcoins, :date_time, :datetime, null: false
  end
end
