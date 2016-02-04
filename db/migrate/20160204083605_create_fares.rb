class CreateFares < ActiveRecord::Migration
  def change
    create_table :fares do |t|
      t.float :farePriceReg
      t.float :farePriceSp
      t.float :fareIncReg
      t.float :fareIncSp
      t.text :fareDescription

      t.timestamps null: false
    end
  end
end
