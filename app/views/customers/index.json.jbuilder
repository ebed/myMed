json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :mid_initial, :last_name, :bod, :sex, :address, :city, :state, :country, :zip, :mob_phone, :phone, :picture
  json.url customer_url(customer, format: :json)
end
