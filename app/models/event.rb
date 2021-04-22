class Event < ApplicationRecord
  belongs_to :user, foreign_key: "user_id", class_name: "User"
  has_many :event_atendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_atendances
end
