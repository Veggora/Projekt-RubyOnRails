class Film < ApplicationRecord
	belongs_to :category
	has_many :aktor
end
