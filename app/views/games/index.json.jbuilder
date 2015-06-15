json.array!(@games) do |game|
  json.extract! game, :id, :name, :price1, :price2, :price3, :price4
end
