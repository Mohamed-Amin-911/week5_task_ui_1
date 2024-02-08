import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:week5_task_ui_1/ui_2/meal_class.dart';
import 'package:week5_task_ui_1/ui_2/meal_widget.dart';

class MyHomePageUi2 extends StatelessWidget {
  const MyHomePageUi2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Image(image: AssetImage("assets/Arrow_Left.png"))),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "What would you like\nto order",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 30,
                  fontWeight: FontWeight.w900),
            ),
            const SizedBox(height: 20),
            const Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        borderSide:
                            BorderSide(color: Color(0xffDDDDDD), width: 2.0),
                      ),
                      prefixIcon: Icon(Icons.search, color: Color(0xffAAAAAA)),
                      hintText: "Search your food...",
                      hintStyle: TextStyle(
                          color: Color(0xff888888),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      )),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Most popular",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                  color: Color(0xff121826)),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 550,
              child: MasonryGridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: meals.length,
                itemBuilder: (context, index) {
                  return MealWidget(
                    meal: meals[index],
                    index: index,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
