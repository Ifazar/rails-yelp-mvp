class RestaurantsController < ActionController::Base

  before_action :set_restaurant, only: %i[show edit update destroy]

  def index
    @index = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def show

  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def edit
    @restaurant.save
  end

  def update
    @restaurant.update(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
