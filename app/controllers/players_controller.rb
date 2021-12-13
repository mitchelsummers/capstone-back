class PlayersController < ApplicationController
  def index
    players = Player.where(card_id: params[:card_id])
    render json: players
  end

  def show
    player = Player.find_by(id: params[:id])
    render json: product
  end

  def create 
    player = Player.new(
      user_id: params[:user_id],
      card_id: params[:card_id]
    )
    if player.save
      render json: player
    else
      render json: { errors: player.errors.full_messages }, status: :bad_request
    end
  end

  def update
    player = Player.find_by(id: params[:id])
    player.user_id = params[:user_id] || player.user_id
    player.card_id = params[:card_id] || palyer.card_id
    if player.save
      render json: player
    else
      render json: { errors: player.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    player = Player.find_by(id: params[:id])
    player.destroy
    render json: { message: "Player Deleted" }
  end
end
