class Event < ApplicationRecord
  belongs_to :user, class_name: "User"
  has_many :event_atendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_atendances
end
