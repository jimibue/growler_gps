class CreateStations < ActiveRecord::Migration
  def change
    create_table :stations do |t|
      t.belongs_to :brewery, index: true, foreign_key: true
      t.string :name
      t.string :address
      t.string :phone
      t.string :website_url
      t.float :gps_latitude
      t.float :gps_longitude

      t.timestamps null: false
    end
  end
end
