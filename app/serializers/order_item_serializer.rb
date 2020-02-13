class OrderItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :order, :product, :quantity, :price
end
