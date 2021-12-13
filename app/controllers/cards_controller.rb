class CardsController < ApplicationController
  before_action :authenticate_user, except: [:index, :course_index, :show] 

  def index
    cards = Card.all
    render json: cards
  end

  def user_index
    cards = Card.where(user_id: current_user.id)
    render json: cards
  end

  def course_index
    cards = Card.where(course_id: params[:id])
    render json: cards
  end

  def show
    card = Card.find_by(id: params[:id])
    render json: card
  end

  def create
    card = Card.new(
      name: params[:name],
      month: params[:month],
      day: params[:day],
      time: params[:time],
      privacy: params[:privacy],
      course_id: params[:course_id],
      user_id: current_user.id
    )
    if card.save
      render json: card
    else
      render json: { errors:card.errors.full_messages }, status: :bad_request
    end
  end

  def update
    card = Card.find_by(id: params[:id])
    card.name = params[:name] || card.name
    card.month = params[:month] || card.month
    card.day = params[:day] || card.day
    card.time = params[:time] || card.time
    card.privacy = params[:privacy] || card.privacy
    card.course_id = params[:course_id] || card.course_id
    card.user_id = params[:user_id] || card.user_id
    if card.save
      render json: card
    else
      render json: { errors: card.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    card = Card.find_by(id: params[:id])
    card.destroy
    render json: { message: "Card Deleted"}
  end
end
