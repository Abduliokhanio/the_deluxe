require 'rails_helper'

RSpec.describe 'Landing Page', type: :routing  do
  describe 'when a user navigates to root' do
    it 'renders home#index' do
      # we don't have a default root path yet
      expect(get("/")).to route_to("home#index")
    end
  end
end
