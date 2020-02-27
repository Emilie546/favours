class Favour < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one :contract, dependent: :destroy
  has_many :payment
  monetize :price_cents

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price_cents,  numericality: { only_integer: true }
  validates :location, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
