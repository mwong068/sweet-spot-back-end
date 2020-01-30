class CreateFavoriteReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :favorite_reviews do |t|
      t.boolean :favorited
      t.string :review
      t.integer :user_id
      t.integer :product_id
      
      t.timestamps
    end
  end
end
