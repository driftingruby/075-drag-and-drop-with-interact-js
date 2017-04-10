class FoodsController < ApplicationController
  def opinion_on_food
    @food = Food.find(params[:id])
    @food.update_attribute(:favorite, params[:favorite])
    @food.save
    head :ok
  end

  def what_to_cook
    @foods = Food.includes(:recipes).all
                 .select {|i| 
                    i.recipes.map(&:ingredient_id)
                    .to_set.subset?(params[:ingredients].to_a.map(&:to_i).to_set) }
  end
end