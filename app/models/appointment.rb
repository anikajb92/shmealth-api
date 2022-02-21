class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :member
end
