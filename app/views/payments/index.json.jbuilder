json.array!(@payments) do |payment|
  json.extract! payment, :id, :paymenttype_id, :start_date, :end_date, :amount, :user
  json.url payment_url(payment, format: :json)
end
