Rails.application.routes.draw do
  get 'contents/index'

  get 'contents/:id', to: "contents#index", as: :contents

  get 'channels', to: "channels#index"

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
