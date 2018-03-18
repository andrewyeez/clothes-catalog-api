class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def show
    render json: @user, status: 200
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
