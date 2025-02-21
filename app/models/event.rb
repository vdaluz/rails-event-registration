class Event < ApplicationRecord
  has_many :users, through: :registrations

  scope :upcoming, -> { where("start_time > ?", Time.now) }
  scope :past, -> { where("end_time < ?", Time.now) }

  validates :name, presence: true
  validates :end_time, comparison: { greater_than: :start_time }
end
