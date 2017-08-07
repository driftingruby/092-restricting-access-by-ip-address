Rails.application.routes.draw do
  get :restricted, to: 'welcome#restricted'
  root 'welcome#index'
end
