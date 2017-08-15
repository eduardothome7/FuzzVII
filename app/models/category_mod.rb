class CategoryMod < ApplicationRecord
	has_many :mods
	belongs_to :icon
end
