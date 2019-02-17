class Api::V1::UsersController < ApplicationController

  def index
    @all_users = User.all
    render json: @all_users, status: :accepted
  end

  def show
    @user = User.find(params[:id])
    render json: @user, status: :accepted
  end

  def create
    @new_user = User.create(user_params)
    render json: @new_user, status: :accepted
  end

  private

    def user_params
      params.permit(:username)
    end

end
