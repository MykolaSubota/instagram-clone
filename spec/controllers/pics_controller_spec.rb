require 'rails_helper'

RSpec.describe PicsController, type: :controller do
 	let!(:user) { build(:user, email: "test@gmail.com") }

login_user

  it "should have a current_user" do
    expect(subject.current_user).to_not eq(nil)
  end

  describe 'GET #new' do
    it "should find current_user and open form for create Profile" do
      get :new
      expect(subject.current_user.email).to eq("tester@test.com")
      expect(subject.current_user.email).to_not eq(user.email)
      expect(response).to have_http_status(200)     
    end
  end
end
