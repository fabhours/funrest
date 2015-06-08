json.array!(@macs) do |mac|
  json.extract! mac, :id, :address
  json.game mac.game.name
end
