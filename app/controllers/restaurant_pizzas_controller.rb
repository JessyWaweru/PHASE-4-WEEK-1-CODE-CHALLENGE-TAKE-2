class RestaurantPizzasController < ApplicationController
    wrap_parameters format:[]
    rescue_from ActiveRecord::RecordInvalid,with: :render_not_found
    def create
      res=RestaurantPizza.create(permit_params)  
      render json:res
    end
    
    private
    def permit_params
        params.permit(:price, :restaurant_id,:pizza_id)
    end

    def render_not_found
        render json: {errors:"Validation error"}
    end
end
