class UsersController < ApplicationController

  def index
  end

  def show
    @user = User.first
    @friends = @user.friends
    @number_of_friends = @friends.count
    @beneficiaries = @user.beneficiaries
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to @user 
  end

  private

  def user_params
     params.require(:user).permit(:last_name,:first_name,:email)
  end
end
