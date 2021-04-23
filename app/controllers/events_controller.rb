class EventsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @event = Event.all
    @past_events = Event.past
    @future_events = Event.future
  end

  def show
    @event = Event.find(params[:id])
    @created_events = current_user.events
    @past_events = current_user.attended_events.past
    @upcoming_events = current_user.attended_events.future
  end

  def new
    @event = current_user.events.build
  end

  def attend
    @event.attendees << current_user
    @event.save
  end

  def create
    @event = current_user.events.build(params_events)
    if @event.save
      redirect_to events_url
    else
      render :new
    end
  end

  def attended_event
    @event = Event.find(params[:id])
    if @event.attendees.include?(current_user)
      redirect_to @event, notice: 'You are already on the list'
    else
      @event.attendees << current_user
      redirect_to @event
    end
  end

  private

  def params_events
    params.require(:event).permit(:title, :description, :date_of_event)
  end
end
