RailsNaPraiaDuvidas::Application.routes.draw do
  resources :entidade2s


  resources :entidade1s


  resources :answers
  resources :questions
  resources :badges

  get "home/index"
  match 'users/:user_id', to: 'users#index'
  match 'answers/:question_id/new', to: 'answers#new'
  match 'vote/:answer_id/:type', to: 'answers#vote'
  match 'votes' , to: 'questions#votes_count'

  match 'login', to: 'home#login'
  match 'login/:provider', to: 'sessions#login'
  
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('http://www.google.com.br')
  match 'signout', to: 'sessions#destroy', as: 'signout'

  root :to => 'home#index'

end
