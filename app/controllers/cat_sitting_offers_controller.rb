class CatSittingOffersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_cat_sitting_offer, only: [:show, :update, :destroy]

  def index
    @cat_sitting_offers = CatSittingOffer.all
  end

  def show
    @booking = Booking.new
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

  def set_cat_sitting_offer
    @catsittingoffer = CatSittingOffer.find(params[:id])
  end

  def cat_sitting_offer_params
    params.require(:cat_sitting_offer).permit(:title, :localisation, :description, :status, photos: [])
  end
  
