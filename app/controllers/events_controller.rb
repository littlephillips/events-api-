class EventsController < ApplicationController

    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    
    def index
        render json: Event.all, status: :ok
    end

    def create
        event = Event.create(event_params)
        render json: event, status: :created
    end

    def show
        event = Event.find_by(:id params[:id])
        render json: event, status: :ok
    end

    def update
        event = Event.find_by(:id params[:id])
        event.update(event_params)
        render json: event, status: :created
    end

    def destroy
        event = Event.find_by(:id params[:id])
        event.destroy
        head :no_content
    end

    private
    def event_params
        params.permit(:eventname, :description, :services, :image_url)
    end

    def render_not_found_response
        render json: {error: "Event not found"}, status: :not_found
    end

    def render_unprocessable_entity_response
        render json: {errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end
end
