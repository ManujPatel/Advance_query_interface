Rails.application.routes.draw do
  #get 'products/index'
  #get 'products/new'
  #get 'products/create'
  #get 'products/show'
  #get 'products/edit'
  #get 'products/update'
  #get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'products#index'
  get 'products/product_with_default_scope'
  get 'products/display_product'
  resources:products
  
  
  # Defines the root path route ("/")
  # root "articles#index"
end
