class Room < ApplicationRecord
	belongs_to :studio
	has_many :calendars
end
