require 'rails_helper'

RSpec.describe LandingController, :type => :controller do
  describe 'GET #index' do
    it 'renders the :index view' do
      expect(response).to have_http_status(:ok)
    end
  end
end
