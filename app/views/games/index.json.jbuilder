json.array!(@games) do |game|
  json.extract! game, :name, :publisher_id
  json.url game_url(game, format: :json)
end
