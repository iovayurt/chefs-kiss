class BookingsController < ApplicationController
  def new
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
    @booking.user = current_user
    @booking.total_price = @booking.calculate_total_price

    if @booking.save
      redirect_to dashboard_path(), notice: 'Booking was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to chef_path(@booking.list)
  end


  def booking_params
    params.require(:booking).permit(:start_time, :end_time, :total_price)
  end
end
