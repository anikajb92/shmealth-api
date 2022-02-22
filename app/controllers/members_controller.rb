class PatientsController < ApplicationController
  private

  def patient_params
    params.require(:patient).permit(:firstname, :lastname, :birthday, :is_active, :monthly_premium, :username,
                                    :password)
  end
end

def create
  @new_patient = Patient.new patient_params

  if @new_patient # if creation of @new_patient from line 4 returns truthy
    @new_patient.save
    render json: @new_patient, status: :created
  else
    render json:
      { error: "Oops! Something went wrong. Please check patient's information and try again" },
           status: :unprocessable_entity
  end
end

def current_meds
  @patient = Patient.find params[:id]
  render json: { patient: @patient }, methods: [:sorted_meds], status: :ok
end
