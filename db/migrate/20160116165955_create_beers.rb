class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :name
      t.belongs_to :brewery, index: true, foreign_key: true
      t.text :description
      t.string :image_url
      t.string :beer_type
      t.boolean :seasonal
      t.float :abv
      t.float :default_beer_price

      t.timestamps null: false
    end
  end
end
