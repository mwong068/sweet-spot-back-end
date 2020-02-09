class OrderSerializer
  include FastJsonapi::ObjectSerializer
  attributes :active, :shipped, :tracking_id, :quantity, :total, :user
end
