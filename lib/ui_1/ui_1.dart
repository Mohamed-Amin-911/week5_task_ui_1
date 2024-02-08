import 'package:flutter/material.dart';
import 'package:week5_task_ui_1/ui_1/category_class.dart';
import 'package:week5_task_ui_1/ui_1/category_widget.dart';
import 'package:week5_task_ui_1/ui_4/ui_4.dart';

class MyHomePageUi1 extends StatelessWidget {
  const MyHomePageUi1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Text(
            "favourites",
            style: TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                fontWeight: FontWeight.w100),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MyHomePageUi4(),
                  ));
            },
            icon: const Icon(Icons.favorite_rounded),
            color: Colors.black,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "What would you like\nto order",
                style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(height: 20),
              const SizedBox(
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
              const SizedBox(height: 10),
              SizedBox(
                height: 600,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: GridView.builder(
                    physics: const ScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2 / 2,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 15),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryWidget(category: categories[index]);
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
