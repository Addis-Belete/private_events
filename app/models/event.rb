class Event < ApplicationRecord
  belongs_to :user, class_name: "User"
  has_many :event_atendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_atendances

  scope :past, -> { where("events_date < ?", Date.today).order(events_date: :desc) }
  scope :future, -> { where("events_date > ?", Date.today).order(:events_date) }
end
