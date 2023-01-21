class ReviewsController < ApplicationController
    skip_before_action :authorized, only: [:index, :create]


    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    def index
        render json: Review.all, status: :ok
    end

    def create
        review = Review.create(review_params)
        render json: review, status: :created
    end

    private

    def review_params
        params.permit(:fullname, :email, :review)
    end

    def render_not_found_response
        render json: {error: "Review not found"}, status: :not_found
    end

    def render_unprocessable_entity_response
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
