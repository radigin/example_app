json.array!(@addresses) do |address|
  json.extract! address, :id, :person_id, :index, :region, :district, :city, :settlement, :street, :house, :building, :construction, :flat, :atype
  json.url address_url(address, format: :json)
end
