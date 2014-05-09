class CreateEmergencyContacts < ActiveRecord::Migration
  def change
    create_table :emergency_contacts do |t|
      t.string :fname
      t.string :lname
      t.string :contact_phone
      t.string :contact_mob_phone
      t.string :contact_email
      t.string :contact_address
      t.string :contact_city
      t.string :contact_state
      t.string :contact_country
      t.string :contact_zip
      t.string :contact_relationship
      t.string :contact_photo
      t.integer :costumer_id

      t.timestamps
    end
  end
end
