require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  before(:each) { request.headers['Accept'] = 'application/vnd.marketplace.v1' }

  describe 'GET #show' do
    before(:each) do
      @user = FactoryBot.create(:user)
      get :show, :params => { :id => @user.id }, format: :json
    end
    it { should respond_with 200 }
  end
end
