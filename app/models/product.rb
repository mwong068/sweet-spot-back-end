class Product < ApplicationRecord
    has_many :order_items
    has_many :orders, through: :order_items
    has_many :users, through: :orders
    has_many :favorite_reviews
    has_many :users, through: :favorite_reviews
end
