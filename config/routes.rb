Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    # speakers
    get '/speakers' => 'speakers#index'
    get '/speakers/:id' => 'speakers#show'
    post '/speakers' => 'speakers#create'
    patch '/speakers/:id' => 'speakers#update'
    delete '/speakers/:id' => 'speakers#destroy'



    # speakers - params
    get '/speakers' => 'speakers#query_method'
    get '/speakers/:url_seg_var' => 'speakers#url_seg_method'
    post '/speakers' => 'speakers#body_method'



    # meetings
    get '/meetings' => 'meetings#index'
    get '/meetings/:id' => 'meetings#show'
    post '/meetings' => 'meetings#create'
    patch '/meetings/:id' => 'meetings#update'
    delete '/meetings/:id' => 'meetings#destroy'
  end
end
