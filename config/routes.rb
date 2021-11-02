Rails.application.routes.draw do
  resources :gardens, only: [:index, :show] do
    resources :plants, only: [:new, :create]
  end

  resources :plants, only: :destroy
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
