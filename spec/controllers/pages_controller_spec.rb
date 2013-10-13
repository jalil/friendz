require "spec_helper"

describe PagesController do
  describe 'GET #index' do
    it  "shoulders the index template" do
      get :index
      expect(response).to render_template :index
     end
  end
end
