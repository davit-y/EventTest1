class EventController < ApplicationController
  layout false

  def new

  end

  # noinspection Rails3Deprecated
  def view
    @event_id = params['id']
    @event = Event.find(@event_id)
    @event_location = @event.location
  end
end
