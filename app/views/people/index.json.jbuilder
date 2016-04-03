json.array!(@people) do |person|
  json.extract! person, :id, :last_name, :first_name, :second_name, :birthday, :sex
  json.url person_url(person, format: :json)
end
