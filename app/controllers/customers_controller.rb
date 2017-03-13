class CustomersController < ApplicationController
    skip_before_action :authenticate_user!, only: :show
  def show
    @customer = Customer.find(params[:id])
  end
end
