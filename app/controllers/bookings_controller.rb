class BookingsController < ApplicationController
  def new
    @chef = Chef.find(params[:chef_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @chef = Chef.find(params[:chef_id])
    @booking.chef = @chef
      if @booking.save
        redirect_to chef_path(@chef)
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
    params.require(:booking).permit(:description, :chef_id)
  end
end
