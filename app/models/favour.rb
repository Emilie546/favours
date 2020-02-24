class Favour < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_one :contract, dependent: :destroy

  validates :name, uniqueness: true, presence: true
  validates :description, presence: true
  validates :price,  numericality: { only_integer: true }
  validates :location, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
