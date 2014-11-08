Rails.application.routes.draw do
  root 'welcome#index'

  get '/choices' => 'welcome#choices'
end
