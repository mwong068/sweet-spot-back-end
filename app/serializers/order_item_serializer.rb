class OrderItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :order, :product
end
