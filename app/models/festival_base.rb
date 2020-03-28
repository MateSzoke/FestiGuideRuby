class FestivalBase < ApplicationRecord
  has_many :days, dependent: :destroy
end