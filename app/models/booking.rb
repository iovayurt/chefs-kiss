class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chef
  validates :start_time, presence: true
  validates :end_time, presence: true

  def calculate_total_price
    (end_time - start_time).to_i * chef.price
  end
end
