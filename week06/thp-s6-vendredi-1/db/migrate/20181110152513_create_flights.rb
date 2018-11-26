class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
    	t.integer :duration
    	t.datetime :departure_date
    	t.string :departure_airport
    	t.string :arrival_airport
    	t.references :departure_airport, index: true
    	t.references :arrival_airport, index: true
      t.timestamps
    end
  end
end
