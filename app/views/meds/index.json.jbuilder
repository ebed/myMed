json.array!(@meds) do |med|
  json.extract! med, :id, :med_name, :dosage, :amount, :start_date, :customer_id
  json.url med_url(med, format: :json)
end
