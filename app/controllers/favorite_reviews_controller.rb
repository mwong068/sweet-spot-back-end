class FavoriteReviewsController < ApplicationController
    before_action :find_favorite_reviews, only: [:show, :update, :destroy]

    def index
        favorite_reviews = FavoriteReview.all
        render json: FavoriteReviewSerializer.new(favorite_reviews)
    end

    def show
        favorite_review = FavoriteReview.find(params[:id])
        render json: FavoriteReviewSerializer.new(favorite_review)
    end

    def new
        favorite_review = FavoriteReview.new
    end

    def create
        @favorite_review = FavoriteReview.find_or_create_by(favorite_review_params)
        render json: FavoriteReviewSerializer.new(@favorite_review)
    end

    def update
        @favorite_review = FavoriteReview.update(favorite_review_params)
        render json: FavoriteReviewSerializer.new(@favorite_review)
    end

    def destroy
        @favorite_review.delete
        favorite_reviews = FavoriteReview.all
        render json: FavoriteReviewSerializer.new(favorite_reviews)
    end

    private

    def find_favorite_reviews
        @favorite_review = FavoriteReview.find(params[:id])
    end

    def favorite_review_params
        params.require(:favorite_review).permit(:favorited, :review, :user_id, :product_id)
    end
end
