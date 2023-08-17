class Review < ApplicationRecord
  belons_to :plant

  validates :rating, presence: true
  validates :review, presence: true
end
