class PlantsController < ApplicationController
    def index
        render json: Plant.all, except: [:created_at, :updated_at]
    end

    def show
        render json: Plant.find(params[:id]), except: [:created_at, :updated_at]
    end

    def create
        new_plant = Plant.create(params.permit(:id, :name, :image, :price))
        render json: new_plant, status: :created
    end

end
