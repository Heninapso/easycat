class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @booking.save
    @customer = Customer.find(params[:booking_id])
    redirect_to customer_path(@customer)
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
