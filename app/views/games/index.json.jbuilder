json.array!(@games) do |game|
  json.extract! game, :id, :name
end