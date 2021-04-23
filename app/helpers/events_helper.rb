module EventsHelper
  def sign_out
    link_to "Sign out", "/users/sign_out", method: :delete if user_signed_in?
  end

  def details(event)
    link_to "See details", event_path(event) if user_signed_in?
  end

  def create
    link_to "Create New Event", new_event_path if user_signed_in?
  end

  def login
    link_to "Log in", new_user_session_path unless user_signed_in?
  end

  def signup
    link_to "sign up", new_user_registration_path unless user_signed_in?
  end

  def attend(event)
    if event.date_of_event < Date.today
      "The event is already past"
    else
      button_to "Attend", attended_event_event_path(event), method: :post, confirm: "really?"
    end
  end

  def profile
    link_to "User Profile", current_user
  end

  def attendee_list(event)
    if event.attendees.empty?
      return "No user attended this event"
    else
      event.attendees.each do |attendee|
        return attendee.name
      end
    end
  end
end
