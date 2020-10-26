class Api::V1::TestController < ApplicationController
  def index
    render json: { message: "index" }, status: 200
  end

  def show
    render json: { message: "show #{params[:id]}" }, status: 200
  end

  def new
    render json: { message: 'new' }, status: 200
  end

  def create
    render json: { message: 'post' }, status: 200
  end

  def update
    render json: { message: 'update' }, status: 200

  end

  def destroy
    render json: { message: 'delete' }, status: 200
  end
  
end
