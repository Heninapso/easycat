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
    current_user.update(user_params)
    current_user.save
    redirect_to user_path(current_user)
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :photo, :first_name, :last_name)
  end
end
