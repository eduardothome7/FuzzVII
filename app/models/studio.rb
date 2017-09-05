class Studio < ApplicationRecord
	# belongs_to :user
	has_many :rooms

	def self.search(search)
	  search = "%#{search}%"

	  where("name ILIKE ?", search)
	end

end
