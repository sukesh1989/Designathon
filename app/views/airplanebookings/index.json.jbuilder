json.array!(@airplanebookings) do |airplanebooking|
  json.extract! airplanebooking, :id, :from, :to, :date_of_journey, :return_date, :noOfPassengers
  json.url airplanebooking_url(airplanebooking, format: :json)
end
