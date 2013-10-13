require "spec_helper"

describe UsersController do
  describe 'GET #index' do
    it 'should render index template' do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    it "should assign user to @user" do
    end
    it "should show" do
      get :show
      expect(response).to render_template :show
    end
  end
end
