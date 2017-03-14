class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save
    @booking.user = current_user
    redirect_to cat_sitting_offers_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
