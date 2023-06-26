class RestaurantsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound,with: :render_not_found
    def index
        render json:Restaurant.all
    end

    def show
        restaurant=find_by_id
        render json:restaurant
    end

    def delete
        restaurant=find_by_id
        restaurant.destroy
    end

    private
    def render_not_found
        render json:{errror:"Restaurant not found"} 
    end

    def find_by_id
        Restaurant.find(params[:id])

    end
end
