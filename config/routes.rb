Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get("/forex", { :controller => "forex", :action => "setup" })
  get("/forex/:first_currency", { :controller => "forex", :action => "first_currency" })
  get("/forex/:first_currency/:second_currency", { :controller => "forex", :action => "conversion" })
end
