import 'package:flutter/material.dart';
import 'package:week5_task_ui_1/ui_1/category_class.dart';
import 'package:week5_task_ui_1/ui_2/ui_2.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.category});
  final Categoryy category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MyHomePageUi2()));
      },
      child: Stack(
        children: [
          Container(
            width: 164,
            height: 166,
            decoration: BoxDecoration(
              color: category.color,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          Positioned(
            bottom: 14,
            right: 16,
            child: Image(
              width: 140,
              image: AssetImage(category.image),
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
              top: 15,
              left: 15,
              child: Text(
                category.title,
                style: const TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ))
        ],
      ),
    );
  }
}
