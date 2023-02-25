class Passenger < ApplicationRecord
  belongs_to :booking

  validates :name, :email, :booking_id, presence: true
end
