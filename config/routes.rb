require_relative '../lib/api_constraints'

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # define api endpoints
  namespace :api, dafaults: {format: :json}, 
                  contraints: {subdomain: 'api'},
                  paths: '/' do
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
      resource :users, :only => [:show]
    end
  end
end
