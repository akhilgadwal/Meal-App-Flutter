
class Restaurant {
  final int id;
  final String restaurantName;
  final String address;
  final String zipCode;
  final String phone;
  final String website;
  final String latitude;
  final String longitude;
  final String stateName;
  final String cityName;
  final String hoursInterval;
  final String cuisineType;

  Restaurant({
    required this.id,
    required this.restaurantName,
    required this.address,
    required this.zipCode,
    required this.phone,
    required this.website,
    required this.latitude,
    required this.longitude,
    required this.stateName,
    required this.cityName,
    required this.hoursInterval,
    required this.cuisineType,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      id: json['id'],
      restaurantName: json['restaurantName'],
      address: json['address'],
      zipCode: json['zipCode'],
      phone: json['phone'],
      website: json['website'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      stateName: json['stateName'],
      cityName: json['cityName'],
      hoursInterval: json['hoursInterval'],
      cuisineType: json['cuisineType'],
    );
  }
}