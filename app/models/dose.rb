class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
  validates :cocktail_id, uniqueness: { scope: :ingredient_id, message: "Comination should be unique" }

  belongs_to :ingredient
  belongs_to :cocktail
end
