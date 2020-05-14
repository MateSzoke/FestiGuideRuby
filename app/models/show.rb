class Show < ApplicationRecord
  belongs_to :day

  validates :performer, presence: true
  validates :time, presence: true
end

