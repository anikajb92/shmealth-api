class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :member
  belongs_to :vital
end
