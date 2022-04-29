Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get("/", { :controller => "application", :action => "home"})
  get("/forex", { :controller => "forex", :action => "currency"})
  get("/forex/:first_choice", { :controller => "forex", :action => "choose" })
  get("/forex/:first_choice/:second_choice", { :controller => "forex", :action => "exchange" })
end
