class ProductSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :price, :quantity, :rating, :description, :image, :orders
end
