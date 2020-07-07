class DoctorsController < ApplicationController

  # GET /doctors
  def index 
    @doctors = Doctor.all
    render json: @doctors
  end

  # GET /doctors/:id
  def show
    @doctor = Doctor.find(params[:id])
    render json: @doctor
  end
end
