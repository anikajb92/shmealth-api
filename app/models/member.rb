class Member < ApplicationRecord
  has_one :doctor, through: :appointments
  has_many :prescriptions
  has_many :vitals
end
