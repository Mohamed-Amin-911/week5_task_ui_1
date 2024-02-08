import 'package:flutter/material.dart';
import 'package:week5_task_ui_1/ui_2/meal_class.dart';
import 'package:week5_task_ui_1/ui_3/ui_3.dart';

class MealWidget extends StatelessWidget {
  const MealWidget({super.key, required this.meal, required this.index});
  final Meal meal;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MyHomePageUi3(meal: meals[index])));
      },
      child: Container(
        margin: const EdgeInsets.all(5),
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            border: Border.fromBorderSide(
                BorderSide(color: Color.fromARGB(66, 158, 158, 158)))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Center(
              child: Image(
                image: AssetImage(meal.image),
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              meal.title,
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 14,
                  fontWeight: FontWeight.w700),
            ),
            Row(
              children: [
                // const SizedBox(width: 20),
                Text(
                  "${meal.time} min .",
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
                const SizedBox(width: 10),
                const Icon(Icons.star_rate_rounded, color: Colors.black),
                const SizedBox(width: 5),
                Text(
                  meal.rating.toString(),
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                // const SizedBox(width: 20),
                Text(
                  "\$ ${meal.price}",
                  style: const TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w700,
                      fontSize: 18),
                ),
                const SizedBox(width: 40),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.black),
                  child: Icon(
                    Icons.shopping_cart,
                    size: 20,
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
