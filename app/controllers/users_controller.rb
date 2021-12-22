class UsersController < ApplicationController
  # before_action :authenticate_admin, except: [:create, :home]
  # before_action :authenticate_user, except: [:create] 

  def index
    users = User.all
    render json: users
  end

  # def home
  #   user = User.find_by(id: current_user.id)
  #   render json: user
  # end

  def show
    user = User.find_by(id: current_user.id)
    render json: user
  end

  def create
    user = User.new(
      user_name: params[:user_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      admin: params[:admin]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    user = User.find_by(id: params[:id])
    user.destroy
    render json: { message: "user Deleted" }
  end
end
