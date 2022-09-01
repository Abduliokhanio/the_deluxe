class HomeController < ApplicationController
  def index
    present = DateTime.now # to highlight that we're in the present
    @events = Event.all.where('event_time >= ?', present)
  end
end
