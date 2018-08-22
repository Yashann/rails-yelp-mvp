class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion:
  { in: ['chinese', 'italian', 'japanese', 'french', 'belgian'] }
  # numericality: {only_integer: true}
  # validates :phone_number, presence: true
end
