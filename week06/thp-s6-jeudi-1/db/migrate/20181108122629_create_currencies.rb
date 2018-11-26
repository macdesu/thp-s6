class CreateCurrencies < ActiveRecord::Migration[5.2]
  def change
    create_table :currencies do |t|
    	t.string :currency_name
    	t.string :currency_price
      t.timestamps
    end
  end
end
