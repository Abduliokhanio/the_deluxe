class HomeController < ApplicationController
  def index
    present = Date.today # to highlight that we're in the present
    @events = Event.all.where('event_time >= ?', present)
  end
end
