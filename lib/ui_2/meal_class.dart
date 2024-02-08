class Meal {
  String title;
  String image;
  int time;
  double price;
  double rating;
  int cal;

  Meal(
      {required this.title,
      required this.image,
      required this.time,
      required this.price,
      required this.rating,
      required this.cal});
}

List<Meal> meals = [
  Meal(
    title: "Pakistan food",
    image: "assets/pakistan.png",
    time: 24,
    price: 12.99,
    rating: 4.8,
    cal: 387,
  ),
  Meal(
    title: "Pieces chicken",
    image: "assets/pieces_chcken.png",
    time: 12,
    price: 8.88,
    rating: 4.8,
    cal: 387,
  ),
  Meal(
      title: "Shrimp pasta",
      image: "assets/shrimp.png",
      time: 14,
      price: 10.40,
      rating: 4.8,
      cal: 387),
  Meal(
      title: "Vegetarian noodles",
      image: "assets/vegetarian.png",
      time: 24,
      price: 12.99,
      rating: 4.8,
      cal: 387),
  Meal(
      title: "Pakistan food",
      image: "assets/pakistan.png",
      time: 24,
      price: 12.99,
      rating: 4.8,
      cal: 387),
  Meal(
      title: "Pieces chicken",
      image: "assets/pieces_chcken.png",
      time: 12,
      price: 8.88,
      rating: 4.8,
      cal: 387),
  Meal(
      title: "Shrimp pasta",
      image: "assets/shrimp.png",
      time: 14,
      price: 10.40,
      rating: 4.8,
      cal: 387),
  Meal(
      title: "Vegetarian noodles",
      image: "assets/vegetarian.png",
      time: 24,
      price: 12.99,
      rating: 4.8,
      cal: 387),
];
