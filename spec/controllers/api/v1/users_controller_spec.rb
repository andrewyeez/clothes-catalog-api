require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  before(:each) {
    request.headers['Accept'] = 'application/vnd.marketplace.v1'
    @user = FactoryBot.create(:user)
  }
  describe 'GET #show' do
    before { get :show, :params => { :id => @user.id }, format: :json }
    it { should respond_with(200) }
  end
end
