Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # speakers
    get '/speakers' => 'speakers#index'
    get '/speakers/:id' => 'speakers#show'

    # meetings
    get '/meetings' => 'meetings#index'
    get '/meetings/:id' => 'meetings#show'
  end
end
