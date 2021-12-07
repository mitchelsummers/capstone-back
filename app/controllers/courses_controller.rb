class CoursesController < ApplicationController
  before_action :authenticate_admin, except: [:index, :show]

  def index
    courses = Course.all
    render json: courses
  end

  def show
    course = Course.find_by(id: params[:id])
    render json: course
  end

  def create 
    course = Course.new(
    name: params[:name],
    address: params[:address],
    hole_count: params[:hole_count],
    course_par: params[:course_par],
    rating: params[:rating],
    image: params[:image]
  )
    if course.save
      render json: course
    else
      render json: { errors: course.errors.full_messages }, status: :bad_request
    end
  end

  def update
    course = Course.find_by(id: params[:id])
    course.name = params[:name] || course.name
    course.address = params[:address] || course.address
    course.hole_count = params[:hole_count] || course.hole_count
    course.course_par = params[:course_par] || course.course_par
    course.rating = params[:rating] || course.rating
    course.image = params[:image] || course.image
    if course.save
      render json: course
    else
      render json: { errors: course.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    course = Course.find_by(id: params[:id])
    course.destroy
    render json: { message: "course Deleted" }
  end

end
