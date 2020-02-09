class User < ApplicationRecord
    has_many :orders
    has_many :products, through: :orders
    # has_many :favorite_reviews
    # has_many :products, through: :favorite_reviews
    
    has_secure_password
    validates :name, presence: true
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true, length: { in: 8..20 }, confirmation: true

end
