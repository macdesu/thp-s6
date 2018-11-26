class Airport < ApplicationRecord
	has_many :departure_airport, class_name: "Airport"
	has_many :arrival_airport, class_name: "Airport"
end
