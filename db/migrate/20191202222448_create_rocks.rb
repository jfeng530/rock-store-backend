class CreateRocks < ActiveRecord::Migration[6.0]
  def change
    create_table :rocks do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :price
      t.string :category
      t.string :color
      t.integer :rating
      t.integer :quantity

      t.timestamps
    end
  end
end
