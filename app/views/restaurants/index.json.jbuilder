json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :name, :neighborhood, :cuisine, :private_dining, :chefs_table, :min_people, :max_people, :buyout, :buyout_price, :contact_name, :contact_number, :contact_email, :valet, :full_bar
  json.url restaurant_url(restaurant, format: :json)
end
