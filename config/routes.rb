Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'uf/:date', to: 'api/uf_days#search_date'
  get 'client/:name', to: 'api/clients#find_client'
end
