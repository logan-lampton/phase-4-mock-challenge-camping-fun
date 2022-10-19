class ActivitiesController < ApplicationController

    # GET /activities
    def index
        activities = Activity.all
        render json: activities, status: :ok
    end

    # DELETE /activities
    def destroy
        activity = Activity.find_by(id: params[:id])
            if activity
                activity.destroy
                render json: {}, status: :no_content
            else
                render json: { error: "Activity not found" }, status: :not_found
            end
    end

end
