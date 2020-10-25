class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def show
    @users = User.find(params[:id])
    render json: @users
  end

  def create
    @users = User.new(user_params)
    if @users.save
      render json: @users
    else
      render error: { error: 'Unable to create User.' }, status: 400
    end
  end

  def update
    @users = User.find(params[:id])
    if @user
      @user.update(user_params)
      render json: { message: 'User successfully updated.' }, status: 200
    else
      render json: { error: 'Unable to update User.' }, status: 400
    end
  end

  def destroy
    @users = User.find(params[:id])
    if @user
      @user.destroy
      render json: { message: 'User successfully deleted. '}, status: 200
    else
      render json: { error: 'Unable to delete User. ' }, status: 400
    end
  end
  # Note here that we have a private area, 
  # with the method user_params defined beneath it. 
  # This is a private class and is used for security purposes. 
  # By passing in user_params in our create and update methods,
  # we utilise ‘strong parameters’
  private
  def user_params
    params.require(:user).permit(:username, :password)
  end

end
