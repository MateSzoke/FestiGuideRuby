class FestivalBase < ApplicationRecord
  has_many :days, dependent: :destroy

  validates :stage, presence: true
  validates :name, {presence: true, uniqueness: true}
end