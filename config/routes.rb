Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  authenticate :user do
    namespace :admin do
      DashboardManifest::DASHBOARDS.each do |dashboard_resource|
        resources dashboard_resource
      end
      root controller: DashboardManifest::ROOT_DASHBOARD, action: :index
    end
  end
  namespace :v1 do
    namespace :admin do
      get '/' => 'dashboards#show'
    end
  end

  root 'pages#index'
  get   '/about'    => 'pages#about'
  get   '/contacts' => 'pages#contacts'
  get   '/products' => 'pages#products'
  post  '/feedback' => 'pages#feedback'
  resources :stocks
  resources :projects
  resources :products, only: [:show]
  resources :blogs, only: %i[show index]
  devise_for :users
end
