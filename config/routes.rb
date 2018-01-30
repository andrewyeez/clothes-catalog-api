require_relative '../lib/api_constraints'

Rails.application.routes.draw do
  devise_for :users
  # define api endpoints
  namespace :api, dafaults: {format: :json}, 
                  contraints: {subdomain: 'api'},
                  paths: '/' do
    # /v1/
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
      resource :user, :only => [:show]
    end
  end
end
