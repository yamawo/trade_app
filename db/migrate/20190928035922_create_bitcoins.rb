class CreateBitcoins < ActiveRecord::Migration[5.2]
  def change
    create_table :bitcoins do |t|
      t.decimal :price,             null: false, precision: 11, scale: 5
      t.datetime :date_time,        null: false
    end
  end
end
