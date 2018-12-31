class Api::V1::UsersController < ApplicationController

  def create
    @new_user = User.new(user_params)

    if @new_user.save
      @all_duels = Duel.all
      render json: @all_duels
    else
      render json: { errors: @new_user.errors.full_messages }, status: :unprocessible_entity
  end

  private

    def user_params
      params.permit(:username)
    end

end
