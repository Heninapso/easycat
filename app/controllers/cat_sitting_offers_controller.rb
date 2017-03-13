class CatSittingOffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cat_sitting_offer, only: [:show]

  def index
    @cat_sitting_offers = CatSittingOffer.all
  end

  def show
    @booking = Booking.new
  end

  private

  def cat_sitting_offer_params
    params.require(:cat_sitting_offer).permit(:title, :description, :localisation, photos: [])
  end

  def set_cat_sitting_offer
    @cat_sitting_offer = CatSittingOffer.find(params[:id])
  end


end
