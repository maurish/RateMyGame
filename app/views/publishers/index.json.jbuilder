json.array!(@publishers) do |publisher|
  json.extract! publisher, :name, :year
  json.url publisher_url(publisher, format: :json)
end
