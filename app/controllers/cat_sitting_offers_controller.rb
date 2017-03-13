class CatSittingOffersController < ApplicationController
  def index
  @cat_sitting_offers = CatSittingOffer.all
  end

end
