module EventsHelper
  def sign_out
    link_to "Sign out", "/users/sign_out", method: :delete if user_signed_in?
  end
end
