class Restaurant < ApplicationRecord
  # association
  has_many :reviews, dependent: :destroy

  # validations
  validates :name, presence: true
  validates :address, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"].freeze
  validates :category, inclusion: { in: CATEGORY }
end
