json.array!(@meds) do |med|
  json.extract! med, :id, :med_name, :dosage, :amount, :start_date, :customer_id
  json.url customer_med_url(@customer,med, format: :json)
end
