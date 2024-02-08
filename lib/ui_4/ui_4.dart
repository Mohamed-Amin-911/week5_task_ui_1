import 'package:flutter/material.dart';
import 'package:week5_task_ui_1/ui_4/favourite_widget.dart';
import 'package:week5_task_ui_1/ui_4/favourites_class.dart';

class MyHomePageUi4 extends StatelessWidget {
  const MyHomePageUi4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            const SizedBox(height: 90),
            Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Image(image: AssetImage("assets/Arrow_Left.png")),
              ),
              const SizedBox(width: 20),
              const Text("Favourites list",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
            ]),
            ListView.builder(
              shrinkWrap: true,
              itemCount: favourites.length,
              itemBuilder: (context, index) {
                return FavouriteWidget(favourite: favourites[index]);
              },
            )
          ],
        ),
      ),
    );
  }
}
