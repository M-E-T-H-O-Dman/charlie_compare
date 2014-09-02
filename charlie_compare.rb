include Math

Radius = 6367.45

def spherical_distance(start_coords, end_coords)
  lat1, long1 = deg2rad *start_coords
  lat2, long2 = deg2rad *end_coords
  2 * Radius * asin(sqrt(sin((lat2-lat1)/2)**2 + cos(lat1) * cos(lat2) * sin((long2 - long1)/2)**2))
end

def deg2rad(lat, long)
  [lat * PI / 180, long * PI / 180]
end
 
l1 = [51.525724, -0.088002]
l2 = [51.527640, -0.089590]
 
puts "%.1f" % spherical_distance(l1, l2).to_f