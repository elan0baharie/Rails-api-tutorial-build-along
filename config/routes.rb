MarketPlaceApi::Application.routes.draw do
  devise_for :users
  namespace :api, defaults: { format: :json } do
            # constraints: { subdomain: 'api' }, path: '/'  do
    namespace :v1 do
    # scope module: :v1,
    #         constraints: ApiConstraints.new(version: 1, default: true) do
      # We are going to list our resources here
      resources :users, :only => [:show, :create, :update, :destroy]
    end

  end
end
