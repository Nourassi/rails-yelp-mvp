class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, :address, presence: :true
  CATEGORIES = %w(chinese italian japanese french belgian)
  validates :category, inclusion: {in: CATEGORIES}
end
