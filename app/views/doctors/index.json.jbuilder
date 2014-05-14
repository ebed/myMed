json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :doctor_fname, :doctor_fname, :doctor_specialty, :doctor_phone, :doctor_email, :doctor_address, :doctor_city, :doctor_state, :doctor_country, :doctor_zip, :customer_id
  json.url customer_doctor_url(@customer,doctor, format: :json)
end
