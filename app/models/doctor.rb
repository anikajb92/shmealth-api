class Doctor < ApplicationRecord
  has_many :appointments
  has_many :members, through: :appointments
end
