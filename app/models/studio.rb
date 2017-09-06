class Studio < ApplicationRecord
	# belongs_to :user
	has_many :rooms
	validates_presence_of :name
	validates_presence_of :cnpj
 	validates_presence_of :email

	def self.search(search)
	  search = "%#{search}%"

	  where("name ILIKE ?", search)
	end

end
