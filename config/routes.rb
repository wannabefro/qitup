Rails.application.routes.draw do
  root 'ember#bootstrap'

  namespace :api do
    namespace :v1 do
      resources :songs, only: [:create, :show]
    end
  end

  get '/*path' => 'ember#bootstrap'
end
