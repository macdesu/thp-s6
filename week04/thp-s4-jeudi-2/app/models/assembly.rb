class Assembly < ApplicationRecord
	has_and_belongs_to_many :a_parts
end