LocalWebApps::Application.routes.draw do

  get 'projects/year/:year', :to => "projects#index", :as => :projects_by_year

  resources :projects, :only => [:index, :show]

  namespace :manage do
    root :to => "projects#index"
    get 'settings', :to => 'settings#show', :as => :settings
    post 'settings', :to => 'settings#update'
    post 'add_student', :to => 'projects#add_student', :as => :add_student
    resources :projects
    resources :users
    resources :school_years
    get 'projects/year/:year', :to => "projects#index", :as => :projects_by_year
  end

  root :to => 'projects#index'
end
