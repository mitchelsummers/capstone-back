class CoursesController < ApplicationController
  def index
    courses = Course.all
    render json: courses
  end

  def show
    course = Course.find_by(id: params[:id])
    render json: product
  end

  def create 
    course = Course.new(
    user_id = params[:user_id],
    course_id = params[:course_id]
  )
  if course.save
    render json: course
  else
    render json: { errors: course.errors.full_messages }, status: :bad_request
  end

  def update
    course = Course.find_by(id: params[:id])
    course.user_id = params[:user_id] || course.user_id
    course.card_id = params[:card_id] || palyer.card_id
    if course.save
      render json: course
    else
      render json: { errors: course.errors.full_messages }, status: :bad_request
    end

    def destroy
      course = Course.find_by(id: params[:id])
      course.destroy
      render json: { message: "course Deleted" }
    end
  end
end
