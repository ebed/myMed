class CreateAlergies < ActiveRecord::Migration
  def change
    create_table :alergies do |t|
      t.string :alergy_name
      t.date :start_date
      t.integer :customer_id

      t.timestamps
    end
  end
end
