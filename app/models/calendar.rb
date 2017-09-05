class Calendar < ApplicationRecord
	belongs_to :room
	has_many :events
end
