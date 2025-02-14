class Bookmark < ApplicationRecord
  # Associations
  belongs_to :movie
  belongs_to :list

  # Validations
  validates :comment, presence: true, length: { minimum: 6 }
  validates :list, presence: true, uniqueness: { scope: :movie_id }
end
