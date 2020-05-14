class Day < ApplicationRecord
  belongs_to :festival_base
  has_many :shows, dependent: :destroy

  validates :date, presence: true
end
