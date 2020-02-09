class FavoriteReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :users, :products
end
