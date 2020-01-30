class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.integer :rating
      t.string :description
      t.string :image

      t.timestamps
    end
  end
end
