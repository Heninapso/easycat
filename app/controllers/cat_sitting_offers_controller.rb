class CatSittingOffersController < ApplicationController
  def index
  @cat_sitting_offers = CatSittingOffer.all
  end

  def cat_sitting_offer_params
    params.require(:cat_sitting_offer).permit(:name, :description, photos: [])
  end
end
