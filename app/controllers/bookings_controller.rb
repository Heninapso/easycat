class BookingsController < ApplicationController
  def create
    @cat_sitting_offer = CatSittingOffer.find(params[:cat_sitting_offer_id])
    @booking = Booking.new(booking_params)

    # @booking.start_date = params["booking"]["start_date"]
    # @booking.end_date = params["booking"]["end_date"]
    @booking.user = current_user
    if not @booking.user.first_name
      @booking.user.first_name = user_params[:user][:first_name]
      @booking.user.last_name = user_params[:user][:last_name]
    end
    current_user.save
    @booking.cat_sitting_offer = @cat_sitting_offer
    @booking.status = "Pending"
    @booking.save
    redirect_to cat_sitting_offers_path, notice: "Your request has been taken into account, the cat sitter will review your request"
  end

  def update
    @booking = Booking.find(params[:id])
    if params[:commit]  == "Accept"
      @booking.update(status: "Accepted")
      redirect_to user_path(current_user), notice: "You accepted the booking request of #{@booking.user.first_name}"
    else
      @booking.update(status: "Declined")
      redirect_to user_path(current_user), notice: "You declined the booking request of #{@booking.user.first_name}"
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

  def user_params
    params.require(:booking).permit( :user => [:first_name, :last_name])
  end
end
