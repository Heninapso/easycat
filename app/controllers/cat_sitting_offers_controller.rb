class CatSittingOffersController < ApplicationController

  before_action :find_cso, only: [:show, :update, :destroy]

  def show
  end

  def new
    @catsittingoffer = CatSittingOffer.new
  end

  def create
    @catsittingoffer = CatSittingOffer.new(catsittingoffer_params)
    if @catsittingoffer.save
      redirect_to cat_sitting_offer_path(@catsittingoffer)
    else
      render :new
    end
  end

  def update
    @catsittingoffer.update(catsittingoffer_params)
  end

  def destroy
    @catsittingoffer.destroy
    redirect_to cat_sitting_offers_path, notice: 'Your cat sitting offer has been deleted'
  end


  private

  def find_cso
    @catsittingoffer = CatSittingOffer.find(params[:id])
  end

  def catsittingoffer_params
    params.require(:cat_sitting_offer).permit(:title, :localisation, :description, :status, photos: [])
  end

end
