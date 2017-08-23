


Rails.application.routes.draw do

  root 'demo#index'

  resources :subjects do
    member do
      get :delete
    end
  end

 #Simple Route
   get 'demo/index'
   get 'demo/hello'
   get 'demo/hello1'
   get 'demo/youtube'


 #Root route
 #root 'demo#index'


 #Default route
 #get ':controller(/:action(/:id))'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
