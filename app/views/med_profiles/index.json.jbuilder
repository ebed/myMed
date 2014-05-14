json.array!(@med_profiles) do |med_profile|
  json.extract! med_profile, :id, :condition, :start_date, :customer_id
  json.url customer_med_profile_path(@customer,med_profile, format: :json)
end
