json.array!(@med_profiles) do |med_profile|
  json.extract! med_profile, :id, :condition, :start_date, :customer_id
  json.url med_profile_url(med_profile, format: :json)
end
