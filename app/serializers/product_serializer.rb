class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :quantity, :rating, :description, :ingredients, :image, :orders
end
