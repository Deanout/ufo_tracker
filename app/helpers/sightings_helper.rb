module SightingsHelper
  def geo_json(sighting)
    # .  .
    # .  .
    coordinates = [sighting.coordinates.map { |c| [c.long, c.lat] }]
    # Append the first coordinate to the end of the array to close the polygon
    coordinates[0] << coordinates[0][0]
    {
      geometry: {
        type: 'Polygon',
        coordinates:
      },
      tooltip: sighting.ufo.status,
      label: sighting.ufo.name,
      color: '#00ff00'
    }
  end
end
