class Favourite {
  String title;
  String image;
  double distance;
  double rating;
  double number;
  double delivery;
  Favourite(
      {required this.title,
      required this.image,
      required this.distance,
      required this.rating,
      required this.number,
      required this.delivery});
}

List<Favourite> favourites = [
  Favourite(
      title: "The Breakfast Club",
      image: "assets/fav1.png",
      distance: 1.4,
      rating: 4.7,
      number: 1.7,
      delivery: 2),
  Favourite(
      title: "Custard’s Last Stand",
      image: "assets/fav2.png",
      distance: 1.6,
      rating: 4.6,
      number: 1.5,
      delivery: 2.50),
  Favourite(
      title: "Planet of the Salad",
      image: "assets/fav3.png",
      distance: 800,
      rating: 4.7,
      number: 4.6,
      delivery: 2),
  Favourite(
      title: "Lord of the Wings",
      image: "assets/fav4.png",
      distance: 1.2,
      rating: 4.5,
      number: 1.9,
      delivery: 1.50),
];
