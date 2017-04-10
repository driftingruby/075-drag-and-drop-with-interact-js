# == Schema Information
#
# Table name: recipes
#
#  id            :integer          not null, primary key
#  food_id       :integer
#  ingredient_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Recipe < ApplicationRecord
  belongs_to :food
  belongs_to :ingredient
end
