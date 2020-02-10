class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to user_path(@user)
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:height, :tickets, :nausea, :happiness, :password)
  end
end
