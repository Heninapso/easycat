class CustomersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    @customer = Customer.find(params[:id])
    @cat_sitting_offer = CatSittingOffer.new
    @booking = Booking.new
  end

  private

  def customer_params
    params.require(:customer).permit(:photo)
  end
end
