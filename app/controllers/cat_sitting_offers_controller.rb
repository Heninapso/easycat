class CatSittingOffersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show, :edit]
  before_action :set_cat_sitting_offer, only: [:show, :edit, :update, :destroy]

  def index
    @cat_sitting_offers = CatSittingOffer.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@cat_sitting_offers) do |cso, marker|
      marker.lat cso.latitude
      marker.lng cso.longitude
      # marker.infowindow render_to_string(partial: "/csos/map_box", locals: { cso: cso })
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @cat_sitting_offer = CatSittingOffer.new
  end

  def create
    @cat_sitting_offer = CatSittingOffer.new(cat_sitting_offer_params)
    @cat_sitting_offer.user = current_user
    @cat_sitting_offer.user.first_name = user_params[:user][:first_name]
    @cat_sitting_offer.user.last_name = user_params[:user][:last_name]
    current_user.save
    if @cat_sitting_offer.save
      redirect_to cat_sitting_offer_path(@cat_sitting_offer)
    else
      render :new
    end
  end

  def edit
  end


  def update
    @cat_sitting_offer.update(cat_sitting_offer_params)
    redirect_to cat_sitting_offer_path(@cat_sitting_offer), notice: 'Your cat sitting offer has been updated'
  end

  def destroy
    @cat_sitting_offer.destroy
    redirect_to cat_sitting_offers_path, notice: 'Your cat sitting offer has been deleted'
  end


  private

  def set_cat_sitting_offer
    @cat_sitting_offer = CatSittingOffer.find(params[:id])
  end

  def cat_sitting_offer_params
    params.require(:cat_sitting_offer).permit(:title, :localisation, :description, :status, photos: [])
  end

  def user_params
    params.require(:cat_sitting_offer).permit( :user => [:first_name, :last_name])
  end
end
