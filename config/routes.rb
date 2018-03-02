Rails.application.routes.draw do

  resources :contents, only:[:show, :index] do
    collection do
      get 'index/:id', action: :index, as: "service_on"
    end
  end
  get 'channels', to: "channels#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "channels#index"
end
