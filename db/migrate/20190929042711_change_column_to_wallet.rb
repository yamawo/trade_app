class ChangeColumnToWallet < ActiveRecord::Migration[5.2]
  def up
    change_column :wallets, :yen, :decimal, precision: 11, scale: 5, default: 100000
  end

  def down
    change_column :wallets, :yen, :decimal, precision: 11, scale: 5
  end
end