class UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def show
    json_response(@user)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
