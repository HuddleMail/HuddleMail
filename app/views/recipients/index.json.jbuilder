json.array!(@recipients) do |recipient|
  json.extract! recipient, :id
  json.url recipient_url(recipient, format: :json)
end
