Rails.application.routes.draw do
  post("/", :to => "application#check")
end
