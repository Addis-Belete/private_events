class Event < ApplicationRecord
  belongs_to :user, class_name: "User"
  has_many :event_attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :event_attendances

  scope :past, -> { where("date_of_event < ?", Date.today).order(date_of_event: :desc) }
  scope :future, -> { where("date_of_event > ?", Date.today).order(:date_of_event) }
  validates :description, :title, :date_of_event, presence: true
end
