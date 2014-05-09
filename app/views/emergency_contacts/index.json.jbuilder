json.array!(@emergency_contacts) do |emergency_contact|
  json.extract! emergency_contact, :id, :fname, :lname, :contact_phone, :contact_mob_phone, :contact_email, :contact_address, :contact_city, :contact_state, :contact_country, :contact_zip, :contact_relationship, :contact_photo, :costumer_id
  json.url emergency_contact_url(emergency_contact, format: :json)
end
