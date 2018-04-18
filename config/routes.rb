Rails.application.routes.draw do
  resources :questions, except: [:destroy, :update, :edit] do
    resources :answers, only: [:create]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
