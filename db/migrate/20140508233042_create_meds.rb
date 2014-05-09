class CreateMeds < ActiveRecord::Migration
  def change
    create_table :meds do |t|
      t.string :med_name
      t.string :dosage
      t.string :amount
      t.date :start_date
      t.integer :customer_id

      t.timestamps
    end
  end
end
