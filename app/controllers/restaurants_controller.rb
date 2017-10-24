class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.seats = params[:restaurant][:seats]
    @restaurant.price_range = params[:restaurant][:price_range]
    @restaurant.user_id = current_user
    @restaurant.neighbourhood = params[:restaurant][:neighbourhood]
    @restaurant.summary = params[:restaurant][:summary]
    @restaurant.menu = params[:restaurant][:menu]
    @restaurant.min_seating = params[:restaurant][:min_seating]
    @restaurant.max_seating = params[:restaurant][:max_seating]

    if @restaurant.save
      redirect_to root_url
    else
      render :new
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.name = params[:restaurant][:name]
    @restaurant.address = params[:restaurant][:address]
    @restaurant.open_time = params[:restaurant][:open_time]
    @restaurant.close_time = params[:restaurant][:close_time]
    @restaurant.seats = params[:restaurant][:seats]
    @restaurant.price_range = params[:restaurant][:price_range]

    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :update
    end
  end
end
