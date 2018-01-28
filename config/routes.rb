Rails.application.routes.draw do
  # define api endpoints
  namespace :api, dafaults: {format: :json}, 
                  contraints: {subdomain: 'api'},
                  paths: '/' do
    # /v1/
    scope module: :v1 do
      
    end
  end
end
