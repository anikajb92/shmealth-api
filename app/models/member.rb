class Member < ApplicationRecord
  has_secure_password

  has_many :appointments
  has_many :prescriptions
  has_one :doctor, through: :appointments
  has_many :vitals, through: :appointments

  validates :username, presence: true, uniqueness: true

  def sorted_meds
    current = prescriptions.where(active: true)
    sorted = current.sort_by { |med| [med.start_date] }
    sorted.reverse
  end
end
