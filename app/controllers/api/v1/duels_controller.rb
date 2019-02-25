class Api::V1::DuelsController < ApplicationController
  before_action :find_duel, only: [:show, :update]

  def index
    @all_duels = Duel.all
    render json: @all_duels, status: :accepted
  end

  def show
    render json: @duel, status: :accepted
  end

  def create
    @new_duel = Duel.create(duel_params)
    render json: @new_duel, status: :accepted
  end

  def update
    @duel.update(duel_params)
    render json: @duel, status: :accepted
  end

  private

    def duel_params
      params.permit(:user_id, :win)
    end

    def find_duel
      @duel = Duel.find(params[:id])
    end

end
