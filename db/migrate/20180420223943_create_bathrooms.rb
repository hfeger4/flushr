class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :location, null: false
      t.string :description
      t.string :image_url
      t.integer :rating

      t.timestamps
    end
  end
end
