class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    @bookings = current_user.bookings
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user.update(user_params)
    @user.save
    # redirect_to edit_user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :photo, :first_name, :last_name)
  end
end
