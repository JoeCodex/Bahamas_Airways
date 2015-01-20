json.array!(@flights) do |flight|
  json.extract! flight, :id, :departure, :arrival, :destination, :bagage_allowance, :capacity
  json.url flight_url(flight, format: :json)
end
