class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :doctor_fname
      t.string :doctor_fname
      t.string :doctor_specialty
      t.string :doctor_phone
      t.string :doctor_email
      t.string :doctor_address
      t.string :doctor_city
      t.string :doctor_state
      t.string :doctor_country
      t.string :doctor_zip
      t.integer :customer_id

      t.timestamps
    end
  end
end
