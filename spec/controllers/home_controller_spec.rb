require 'rails_helper'
RSpec.describe HomeController, type: :controller do
    describe "GET index" do
      it "assigns present and future events to @events" do
        future_event = Event.create(performer: "future day", event_time: (DateTime.now + 1.day), content: "1day in the future")
        today_event = Event.create(performer: "present day", event_time: (DateTime.now + 1.hour), content: "today")
        get :index
        expect(assigns(:events)).to eq([future_event,today_event])
      end

      it "cant assign past events to @events" do
        future_event = Event.create(performer: "past day", event_time: (DateTime.now - 1.day), content: "1day in the past")
        get :index
        expect(assigns(:events)).to eq([])
      end
  
      it "renders the index template" do
        get :index
        expect(response).to render_template("index")
      end
    end
  end