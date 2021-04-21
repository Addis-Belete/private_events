class Event < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  has_many :event_attendances, foreign_key: :attendee, source: :user
  has_many :users, through: :event_attendances
end
