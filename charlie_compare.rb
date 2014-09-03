module compare_coords

	include Math
	 
	R = 6367.45  # radius of the Earth, in kilometers

	def deg2rad(lat, long) # converts degrees to radians
	  [lat * PI / 180, lon * PI / 180]
	end
	 
	def distance(start_coords, end_coords)
	  lat1, lon1 = deg2rad *start_coords
	  lat2, lon2 = deg2rad *end_coords
	  2 * R * asin(sqrt(sin((lat2-lat1)/2)**2 + cos(lat1) * cos(lat2) * sin((lon2 - lon1)/2)**2)) # Haversine formula
	end
end
 