class Movie < ApplicationRecord
  # Associations
  has_many :bookmarks, dependent: :destroy

  # Validations
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true, uniqueness: true
end
