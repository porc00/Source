CursoRails::Application.routes.draw do
  resources :votes


  resources :answers


  resources :questions


  resources :badges

  match 'answers/:question_id/answer', to: 'answers#new'
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  match '/' => 'application#index'
end
