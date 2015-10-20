Rails.application.routes.draw do

  resources :topics do
  # get '/topics'
  # get '/topics/:id'
  # post '/topics' => 'topics#create'
    resources :posts, except: [:index]
    
    resources :sponsored_posts, except: [:index]
  end

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
