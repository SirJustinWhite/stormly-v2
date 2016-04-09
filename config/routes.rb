Rails.application.routes.draw do
  get 'weather/current_location'

  root 'static_pages#home'
  get 'static_pages/home'
end
