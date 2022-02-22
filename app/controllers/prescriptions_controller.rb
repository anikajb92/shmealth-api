class PrescriptionsController < ApplicationController
  def index
    @medication = Prescription.all
    render json: @medication, status: :ok
  end
end
