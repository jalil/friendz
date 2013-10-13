require "spec_helper"

describe UsersController do

  describe 'GET #index' do
    it "should  render show template" do
      get :index
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do

    let(:user) {Fabricate(:user)}

    it "should set user to @user" do
      get :show, id: user.id
      expect(assigns(:user)).to eq user 
    end 

    it "should render :show template" do
      get :show, id: user.id
      expect(response).to render_template :show
    end


    it "should return array of friends" do
      user.friends.create(user_id: user.id, name: 'James Toney', email: 'james@example.com', message: 'This is my message')
      get :show, id: user.id
      user.friends.first.email.should == 'james@example.com'
    end
  end
end
