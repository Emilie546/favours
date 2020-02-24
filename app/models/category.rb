class Category < ApplicationRecord
  has_many :favours

  validates :name, uniqueness: true, presence: true
end
