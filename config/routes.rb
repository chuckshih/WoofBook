Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/kamigo/eat', to: 'kamigo#eat'
  get '/kamigo/request_headers', to: 'kamigo#request_headers'
  get '/kamigo/request_body', to: 'kamigo#request_body'
  get '/kamigo/response_headers', to: 'kamigo#response_headers'
  get '/kamigo/response_body', to: 'kamigo#show_response_body'


  # Postman

  post '/kamigo/webhook', to: 'kamigo#webhook'

  # 爬蟲
  get '/kamigo/sent_request', to: 'kamigo#sent_request'
  
end