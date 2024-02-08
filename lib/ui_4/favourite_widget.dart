import 'package:flutter/material.dart';
import 'package:week5_task_ui_1/ui_4/favourites_class.dart';

class FavouriteWidget extends StatelessWidget {
  const FavouriteWidget({super.key, required this.favourite});
  final Favourite favourite;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(image: AssetImage(favourite.image)),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  favourite.title,
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    Text(
                      "${favourite.distance} km",
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.star_rate_rounded),
                    Text(
                      " ${favourite.rating} ",
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    Text(
                      "(${favourite.number})",
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  children: [
                    const Icon(Icons.delivery_dining),
                    Text(
                      " ${favourite.delivery}",
                      style: const TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey),
                    ),
                    const Spacer(),
                    const Icon(Icons.favorite_rounded)
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
