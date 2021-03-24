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
    @opinions = @restaurant.opinions.order_desc
    @all_images =[]
    @all_images = @restaurant.images.map{|img| ({ image: url_for(img) })} if @restaurant.images.attached?
    render json: {restaurant: @restaurant, opinions:@opinions, images:  @all_images}
  end
  #Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut odio libero, varius eget lgula eget, pretium volutpat nunc. Duis volutpat ipsum.

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
