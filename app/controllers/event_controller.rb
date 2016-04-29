class EventController < ApplicationController
  layout false

  def index
    redirect_to(:action => 'new')
  end

  def new

  end

  # noinspection Rails3Deprecated
  def view
    puts 'find me'
    if params[:id] == ''
      puts params[:id]
      redirect_to(:action => 'new')
    else
      @event_id = params['id']
      @event = Event.find(@event_id)
      @event_location = @event.location
    end
  end
end
