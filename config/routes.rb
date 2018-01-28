Rails.application.routes.draw do
  # define api endpoints
  namespace :api, dafaults: {format: :json}, 
                  contraints: {subdomain: 'api'},
                  paths: '/' do
    # /v1/
    scope module: :v1,
          constraints: ApiConstraints.new(version: 1, default: true) do
    
    end
  end
end
