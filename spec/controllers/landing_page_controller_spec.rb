require 'spec_helper'

describe LandingPageController do
  describe "GET show" do
    it "renders the show template" do
      get :show
      response.should render_template('show')
    end
  end
end
