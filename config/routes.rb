Rails.application.routes.draw do
  resources :labels, only: [:show]

  resources :topics do
    resources :posts, except: [:index]
  end
  resources :posts, only: [] do
    resources :comments, only: [:create, :destroy]
    resources :favorites, only: [:create, :destroy]

    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'

  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create, :update]
      # post 'topics/:id/create_post' => 'topics#create_post', as: :create_post
      resources :topics, except: [:edit, :new] do
        post 'create_post' => 'topics#create_post', as: :create_post, on: :member
        # '/topics/:id/create_post'
      end
      resources :posts, only: [:index, :show, :update, :destroy]
      resources :comments, only: [:index, :show]
    end
  end
end
