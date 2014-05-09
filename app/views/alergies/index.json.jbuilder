json.array!(@alergies) do |alergy|
  json.extract! alergy, :id, :alergy_name, :start_date, :customer_id
  json.url alergy_url(alergy, format: :json)
end
