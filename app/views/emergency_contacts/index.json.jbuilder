json.array!(@emergency_contacts) do |emergency_contact|
  json.extract! emergency_contact, :id, :fname, :lname, :contact_phone, :contact_mob_phone, :contact_email, :contact_address, :contact_city, :contact_state, :contact_country, :contact_zip, :contact_relationship, :contact_photo, :customer_id
  json.url customer_emergency_contact_path(@customer,emergency_contact, format: :json)
end
