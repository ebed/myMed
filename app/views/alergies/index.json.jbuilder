json.array!(@alergies) do |alergy|
  json.extract! alergy, :id, :alergy_name, :start_date, :customer_id
  json.url customer_alergy_path(@customer,alergy, format: :json)
end
