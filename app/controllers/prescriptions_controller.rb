class PrescriptionsController < ApplicationController
  def update
    @medication = Prescription.find params[:id]
    @medication.update name: params[:name], dosage: params[:dosage]
    render json: @medication, status: :updated
  end
end

def index
  @medication = Prescription.all
  render json: @medication, status: :ok
end
