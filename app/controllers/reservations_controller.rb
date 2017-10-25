class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])

    @reservation.user = current_user
    @reservation.restaurant = @restaurant
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.party_size = params[:reservation][:party_size]

    # Update loyalty_points
    current_user.increment!(:loyalty_points, by = 10)

    if @reservation.save
      redirect_to root_url
      flash[:notice] = "Your seat has been reserved."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    if @reservation.present?
      @reservation.destroy

      if current_user.loyalty_points <= 0
      else
        current_user.increment!(:loyalty_points, by = -10)
      end
      flash[:notice] = "Reservation has been successfully deleted."
    end
    redirect_to users_url(current_user)
  end

end
