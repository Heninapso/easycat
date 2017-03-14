class UsersController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!, only: [:edit, :update, :show]

  def show
=======
  skip_before_action :authenticate_user!, only: :show

  def show
    @user = User.find(params[:id])
    @bookings = current_user.bookings
>>>>>>> 9b555e43374738e473e42034596c546e4a712bce
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
