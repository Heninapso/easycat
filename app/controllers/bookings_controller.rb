class BookingsController < ApplicationController
  def create
    @cat_sitting_offer = CatSittingOffer.find(params[:cat_sitting_offer_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.cat_sitting_offer = @cat_sitting_offer
    @booking.status = "pending"
    @booking.save
    redirect_to cat_sitting_offers_path
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
