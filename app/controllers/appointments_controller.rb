class AppointmentsController < ApplicationController
  def update
    @appointment = Appointment.find params[:id]
    @appointment.udpate date: params[:date], time: params[:time]
    render json: @appointment, status: :updated
  end

  def destroy
    @appointment = Appointment.find params[:id]
    @appointment.destroy
    render json: { appointment: @appointment, message: 'Successfully deleted' }, status: :no_content
  end
end
