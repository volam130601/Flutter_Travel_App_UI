class Location {
  final String title, location, image;
  final int price;
  final int starAmount;
  final bool isFavorite;

  Location({
    required this.title,
    required this.location,
    required this.image,
    required this.price,
    required this.starAmount,
    required this.isFavorite,
  });
}

List<Location> demo_locations = [
  Location(title: "Canina bresih", location: "New York", image: "assets/images/new_york.jpg", price: 123, starAmount: 4, isFavorite: true),
  Location(title: "Canina bresih", location: "Indonesia", image: "assets/images/indonesia.jpg", price: 200, starAmount: 4, isFavorite: true),
];