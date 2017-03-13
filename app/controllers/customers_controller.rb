class CustomersController < ApplicationController
<<<<<<< HEAD
    skip_before_action :authenticate_user!, only: :show
=======
  skip_before_action :authenticate_user!, only: :show
>>>>>>> 2d7f93d34d6143929b7831c9f236c1b0b3095072
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
