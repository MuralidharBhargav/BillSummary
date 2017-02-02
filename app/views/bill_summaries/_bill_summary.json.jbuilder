json.extract! bill_summary, :id, :Title, :PaymentDate, :Description, :Amount, :created_at, :updated_at
json.url bill_summary_url(bill_summary, format: :json)