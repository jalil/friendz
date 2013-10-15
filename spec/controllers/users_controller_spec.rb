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

    it "should return number of friends" do
      user.friends.create(user_id: user.id, name: 'James Toney', email: 'james@example.com', message: 'This is my message')
      user.friends.create(user_id: user.id, name: 'Van Damme', email: 'vandamme@example.com', message: 'This is my message')
      user.friends.create(user_id: user.id, name: 'Bruce Lee', email: 'lee@example.com', message: 'This is my message')
      get :show, id: user.id
      user.friends.count.should  == 3
    end

    it "should return array of beneficiaries" do
      user.beneficiaries.create(first_name: 'Jon', last_name: 'Lenin', email: 'jon@example.com')
      user.beneficiaries.create(first_name: 'Max',last_name: 'Jone', email: 'max@example.com')
      get :show, id: user.id
      user.beneficiaries.last.email.should == 'max@example.com'
      user.beneficiaries.count == 2
    end

    it "should have a limit of 2 beneficiaries" do
      user.beneficiaries.create(first_name: 'Jon', last_name: 'Lenin', email: 'jon@example.com')
      user.beneficiaries.create(first_name: 'Max',last_name: 'Jone', email: 'max@example.com')
      user.beneficiaries.create(first_name: 'Larry',last_name: 'Lax', email: 'max@example.com')
      user.beneficiaries.create(first_name: 'Curly',last_name: 'Hair', email: 'max@example.com')
      get :show, id: user.id
      user.beneficiaries.last.email.should == 'max@example.com'
      user.beneficiaries.count.should == 2
    end
  end
end
