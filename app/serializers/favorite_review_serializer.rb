class FavoriteReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user, :product, :favorited, :review
end
