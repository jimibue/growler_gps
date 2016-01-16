class CreateTaps < ActiveRecord::Migration
  def change
    create_table :taps do |t|
      t.belongs_to :station, index: true, foreign_key: true
      t.belongs_to :beer, index: true, foreign_key: true
      t.float :actual_64_price
      t.boolean :in_stock

      t.timestamps null: false
    end
  end
end
