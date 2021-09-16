class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
