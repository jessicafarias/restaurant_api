class RestaurantsController < ApplicationController
  def index
    #@restaurants = Restaurant.all
    #render json: {restaurant: @restaurant, images:  @restaurant.images.map{|img| ({ image: url_for(img) })}}
    #render json: @restaurants.images.map{|img| ({ image: url_for(img) })}
    @restaurants = []
    Restaurant.all.map do |restaurant|
      @restaurants.push({
        id: restaurant.id,
        title: restaurant.name,
        description: restaurant.description,
        cover: url_for(restaurant.images.first),
      })
    end
    render json: @restaurants
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @opinions = @restaurant.opinions
    render json: {restaurant: @restaurant, opinions:@opinions, images:  @restaurant.images.map{|img| ({ image: url_for(img) })}}
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
