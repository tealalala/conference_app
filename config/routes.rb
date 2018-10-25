Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # speakers
    get '/speakers' => 'speakers#index'
    get '/speakers/:id' => 'speakers#show'

    # speakers - use parameters
    get '/speakers' => 'speakers#query_method'
    get '/speakers/:url_seg_var' => 'speakers#url_seg_method'
    post '/speakers' => 'speakers#body_method'

    # meetings
    get '/meetings' => 'meetings#index'
    get '/meetings/:id' => 'meetings#show'
  end
end
