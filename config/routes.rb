Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"
  namespace :api do
    get '/one_speaker' => 'speakers#one_speaker'
    get '/all_speakers' => 'speakers#all_speakers'
  end
end
