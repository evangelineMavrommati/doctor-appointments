class AppointmentsController < ApplicationController
  before_action :find_doctor

  # GET /doctors/:id/appointments -- will show all appointments for that doctor
  # GET /doctors/:id/appointments { time: "07-07-2020" } -- show you all appointments for that doctor for that day
  def index
    if params[:time].present?
      time = DateTime.parse(params[:time])
      @appointments = @doctor.appointments.where(time: time.beginning_of_day..time.end_of_day)
    else
      @appointments = @doctor.appointments
    end
    render json: @appointments
  end

  # POST /doctors/:id/appointments
  def create
    time = DateTime.parse(params[:time])

    if time.min % 15 != 0
      raise "Invalid time"
    elsif @doctor.appointments.where(time: time).count >= 3
      raise "Doctor is full at this time"
    end

    @appointment = @doctor.appointments.create!(
      time: params[:time],
      kind: params[:kind],
      patient_first_name: params[:patient_first_name],
      patient_last_name: params[:patient_last_name]
    )
    render json: @appointment
  end

  # DELETE /doctors/:id/appointment/:id
  def destroy
    @appointment = Appointment.find(params[:id])
    head :no_content
  end

  private 

  def find_doctor
    @doctor = Doctor.find(params[:doctor_id])
  end
end
