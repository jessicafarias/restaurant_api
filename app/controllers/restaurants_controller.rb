class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.first
    render :json => @restaurants.images.map{|img| ({ image: url_for(img) })}
  end

  def create
    @restaurant = Restaurant.create!(message_params)
    render_success(message: 'OK')
  end

  def create
    @restaurant = Restaurant.create!(restaurant_params)
    
    if @restaurant.save
      render_success(message: 'OK')
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :description, images: [])
  end
end
