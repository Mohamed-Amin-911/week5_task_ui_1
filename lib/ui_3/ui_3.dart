import 'package:flutter/material.dart';
import 'package:week5_task_ui_1/ui_2/meal_class.dart';

class MyHomePageUi3 extends StatelessWidget {
  const MyHomePageUi3({super.key, required this.meal});
  final Meal meal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Expanded(
          child: Column(
            children: [
              const SizedBox(height: 90),
              Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Image(
                        image: AssetImage("assets/Arrow_Left.png"))),
                const SizedBox(width: 20),
                const Text("Details",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w600)),
                const Spacer(),
                const Icon(
                  Icons.favorite_rounded,
                  size: 25,
                )
              ]),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Image(
                  image: AssetImage(meal.image == "assets/pieces_chcken.png"
                      ? "assets/piecesChickenbig.png"
                      : meal.image),
                  width: 200,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Icon(Icons.access_time_filled_rounded),
                  Text(
                    meal.time.toString(),
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.star_rounded),
                  Text(
                    meal.rating.toString(),
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.local_fire_department_rounded),
                  const Text(
                    " 348Kcal",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  const SizedBox(width: 5),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Small",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: BorderRadius.circular(10)),
                    child: const Text(
                      "Medium",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const Text(
                    "Large",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Text(
                    meal.title,
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  const Row(
                    children: [
                      Text(
                        "-    2    +",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 24,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                children: [
                  Text(
                    "Ingradients",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 19,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "🌾 Black Pasta",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "🍤 Shrimp",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "🍅Tomato",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${meal.price}",
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 233,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        backgroundColor: Colors.black,
                      ),
                      child: const Text(
                        "Add to cart",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 19,
                            fontWeight: FontWeight.w700,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
