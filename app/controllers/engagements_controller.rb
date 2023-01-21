class EngagementsController < ApplicationController

    skip_before_action :authorized, only: [:index, :destroy, :create]

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :invalid_message

    def index 
        render json: Engagement.all, status: :ok
    end

    def create 
        engagement = Engagement.create(engagement_params)
        render json: engagement, status: :created
    end

    def destroy
        engagement = Engagement.find(params[:id])
        engagement.destroy
        head :no_content
    end

    private
    def engagement_params
        params.permit(:fullname, :email, :comment)
    end

    def render_not_found_response
        render json: {error: "Engagement not found"}, status: :not_found
    end

    def invalid_message(invalid)
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
