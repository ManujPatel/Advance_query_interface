Rails.application.routes.draw do
  #get 'orders/index'
  #get 'orders/new'
  #get 'orders/create'
  #get 'orders/show'
  #get 'orders/edit'
  #get 'orders/update'
  #get 'orders/destroy'
  #get 'customers/index'
  #get 'customers/new'
  #get 'customers/create'
  #get 'customers/show'
  #get 'customers/edit'
  #get 'customers/update'
  #get 'customers/destroy'
  #get 'products/index'
  #get 'products/new'
  #get 'products/create'
  #get 'products/show'
  #get 'products/edit'
  #get 'products/update'
  #get 'products/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'products#main_index'
  get 'products/main_index'
  get 'products/product_with_default_scope'
  get 'products/display_product'
  get 'products/most_sales_product_by_price'
  get 'products/most_sales_product_by_quantity'
  get 'orders/most_cancelled_order_of_product'
  get 'orders/most_booked_order_of_product'
  resources:products
  resources:orders
  resources:customers
  #/home/manujpatel/rails_projects/product_app/app/views/main_index.html.erb
  
  # Defines the root path route ("/")
  # root "articles#index"
end
