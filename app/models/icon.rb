class Icon < ApplicationRecord
	has_many :mods
	has_many :category_mods
end
