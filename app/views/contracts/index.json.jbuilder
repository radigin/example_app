json.array!(@contracts) do |contract|
  json.extract! contract, :id, :person_id, :post_id, :salary
  json.url contract_url(contract, format: :json)
end
