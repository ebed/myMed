class CreateMedProfiles < ActiveRecord::Migration
  def change
    create_table :med_profiles do |t|
      t.string :condition
      t.date :start_date
      t.integer :customer_id

      t.timestamps
    end
  end
end
