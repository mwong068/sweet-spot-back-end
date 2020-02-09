class FavoriteReviewsController < ApplicationController
    before_action :find_favorite_reviews, only: [:show, :create, :update, :destroy]

    def index
        favorite_reviews = FavoriteReview.all
        render json: FavoriteReviewSerializer.new(favorite_reviews)
    end

    def show
        favorite_review = FavoriteReview.find(params[:id])
        render json: FavoriteReviewSerializer.new(favorite_review)
    end

    def new
        FavoriteReview = FavoriteReview.new
    end

    def create
        FavoriteReview.create(favorite_review_params)
    end

    def update
        FavoriteReview.update(favorite_review_params)
    end

    def destroy
    end

    private

    def find_favorite_reviews
        favorite_review = FavoriteReview.find(params[:id])
    end

    def favorite_review_params
        params.require(:favorite_review).permit(:favorited, :review, :user_id, :product_id)
    end
end
