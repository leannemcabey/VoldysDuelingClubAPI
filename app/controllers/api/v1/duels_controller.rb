class Api::V1::DuelsController < ApplicationController

  def index
    @all_duels = Duel.all
    render json: @all_duels, status: :accepted
  end

  def create
    @new_duel = Duel.create(duel_params)
    @all_duels = Duel.all
    render json: @all_duels, status: :accepted
  end

  private

  def duel_params
    params.permit(:user_id)
  end

end
