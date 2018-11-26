class CreateAParts < ActiveRecord::Migration[5.2]
  def change
    create_table :a_parts do |t|
    	t.string :part_number
      t.timestamps
    end
  end
end
