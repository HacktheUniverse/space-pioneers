Rails.application.routes.draw do
  root 'welcome#index'

  get '/choices/:event_id' => 'welcome#choices'
end
