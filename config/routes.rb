Rails.application.routes.draw do
  root 'visitors#favorite_foods'
  get :ingredients, to: 'visitors#ingredients'
  get '/food/:id/opinion_on_food', to: 'foods#opinion_on_food', as: :opinion_on_food
  get '/food/what_to_cook', to: 'foods#what_to_cook', as: :what_to_cook
end
