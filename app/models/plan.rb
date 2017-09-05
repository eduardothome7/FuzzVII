class Plan < ApplicationRecord
   belongs_to :icon
   has_and_belongs_to_many :mods
end
