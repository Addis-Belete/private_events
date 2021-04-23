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
  
end
