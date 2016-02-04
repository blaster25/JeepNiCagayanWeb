json.array!(@fares) do |fare|
  json.extract! fare, :id, :farePriceReg, :farePriceSp, :fareIncReg, :fareIncSp, :fareDescription
  json.url fare_url(fare, format: :json)
end
