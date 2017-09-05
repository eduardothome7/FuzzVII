class Mod < ApplicationRecord
	belongs_to :icon
	belongs_to :category_mod
 	has_and_belongs_to_many :plans
end
