Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/snowboards" => "snowboards#index"
    get "/snowboards/:id" => "snowboards#show"
    post "/snowboards" => "snowboards#create"
    patch "/snowboards/:id" => "snowboards#update"
    delete "/snowboards/:id" => "snowboards#destroy"

  end
end
