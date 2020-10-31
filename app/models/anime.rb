class Anime < ApplicationRecord
  validates :title, :release_date, presence: true
end
