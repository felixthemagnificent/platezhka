json.array!(@paymenttypes) do |paymenttype|
  json.extract! paymenttype, :id, :typename, :price
  json.url paymenttype_url(paymenttype, format: :json)
end
