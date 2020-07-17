Rails.application.routes.draw do
  # get 'users/show'（rails g controllerでできたやつ。すでに下にルーティングあったので）
  devise_for :users
  root "blogs#index"
  resources :users, only: [:show]
  resources :blogs do
    collection do
      post :confirm
    end
  end

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end
end
