Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/cars" => "cars#index"
    post "/cars" => "cars#create"
    get "/cars/:id" => "cars#show"
    patch "/cars/:id" => "cars#update"
    delete "/cars/:id" => "cars#destroy"
  end


end
