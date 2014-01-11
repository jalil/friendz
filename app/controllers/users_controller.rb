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
    if @user.save
       session[:user_id] = @user.id
       redirect_to root_url, notice: "Thank you for signing up!"
    else
       render 'new'
    end
  end

  private

  def user_params
     params.require(:user).permit(:last_name,:first_name,:email)
  end
end
