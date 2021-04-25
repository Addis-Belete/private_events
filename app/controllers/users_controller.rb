class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(params[:id])
    @created_events = current_user.events.all
    @past_events = current_user.attended_events.past
    @upcoming_events = current_user.attended_events.future
  end
end
