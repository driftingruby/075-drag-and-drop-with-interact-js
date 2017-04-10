class VisitorsController < ApplicationController
  def favorite_foods
  end

  def ingredients
    @ingredients = Ingredient.all
  end
end
