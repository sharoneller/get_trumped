Rails.application.routes.draw do
  
 root "issues#index"
 
  resources :issues do
	resources :quotes
end

  resources :candidates

 #root "issues#index"

 #get "issues" => "issues#index"
 #get "issues/:id" => "issues#show", as: "issue"
 
end
