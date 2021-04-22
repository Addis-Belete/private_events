class Event < ApplicationRecord
  belongs_to :user, class_name: "User"
  has_many :event_atendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_atendances

  scope :past, -> { where("date_of_event < ?", Date.today).order(date_of_event: :desc) }
  scope :future, -> { where("date_of_event > ?", Date.today).order(:date_of_event) }
end
