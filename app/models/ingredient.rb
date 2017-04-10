# == Schema Information
#
# Table name: ingredients
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Ingredient < ApplicationRecord
  has_many :recipes, dependent: :destroy, class_name: 'Recipe'
  has_many :foods, through: :recipes
end
