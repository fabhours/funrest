json.array!(@macs) do |mac|
  json.extract! mac, :id, :address
end
