import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/meals_controller.dart';
import 'package:meals_app/pages/fav_screen.dart';
import 'package:meals_app/pages/home_page.dart';

class BottomNavBar extends StatelessWidget {
  final MealsController controller = Get.find();
  BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (val) {
        controller.selectedIndex.value = val;
        if (controller.selectedIndex.value == 0) {
          Get.to(() => const HomePage());
        } else {
          Get.to(() => const FavScreen());
        }
      },
      currentIndex: controller.selectedIndex.value,
      selectedItemColor: Colors.amber,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'Category',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.star),
          label: 'Favourite',
        )
      ],
    );
  }
}
