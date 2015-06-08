json.array!(@kartus) do |kartu|
  json.extract! kartu, :id, :nomor, :saldo
end
