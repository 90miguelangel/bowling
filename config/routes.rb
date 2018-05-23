Rails.application.routes.draw do
  get 'games/new'
  post 'games/create'
  root 'games#new'
  scope :api, defaults: { format: 'json' } do
    post 'score' => 'games#create'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
