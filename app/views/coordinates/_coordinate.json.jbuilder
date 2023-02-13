json.extract! coordinate, :id, :lat, :long, :sighting_id, :created_at, :updated_at
json.url coordinate_url(coordinate, format: :json)
