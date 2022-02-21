class Member < ApplicationRecord
  has_many :appointments
  has_many :prescriptions
  has_one :doctor, through: :appointments
  has_many :vitals, through: :appointments
end
