class EventsController < ApplicationController
  before_action :authenticate_user!

  def index
    @event = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = current_user.events.build
  end

  def create
    @event = current_user.events.build(params_events)
    if @event.save
      redirect_to events_url
    else
      render :new
    end
  end

  private

  def params_events
    params.require(:event).permit(:title, :description, :date_of_event)
  end
end
