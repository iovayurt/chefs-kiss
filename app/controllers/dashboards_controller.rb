class DashboardsController < ApplicationController
  def show
    @chefs = current_user.chefs
    @bookings = current_user.bookings
  end
end
