class User < ApplicationRecord
  enum :role, [ admin: "admin", atendee: "atendee" ]

  validates :email, presence: true, uniqueness: true
  validates :role, presence: true
  validates :name, presence: true

  has_many :events, through: :registrations
end
