class Payment < ApplicationRecord
  attr_accessor :name, :card_number, :exp_month, :exp_year, :cvc

  belongs_to :user
  belongs_to :favour

  # Ce sont les infos obligatoires pour effectuer un new paiement
  validates :name, presence: true
  validates :card_number, presence: true
  validates :exp_month, presence: true
  validates :exp_year, presence: true
  validates :cvc, presence: true
end
