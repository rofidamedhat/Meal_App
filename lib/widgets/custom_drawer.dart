import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/pages/filter_page.dart';
import 'package:meals_app/pages/home_page.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 4,
            color: const Color.fromARGB(255, 132, 0, 51),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 15),
                Icon(Icons.fastfood_sharp, size: 50),
                SizedBox(width: 10),
                Text(
                  'Cooking Up',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 22,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.offAll(() => const HomePage());
            },
            child: Row(
              children: [
                const SizedBox(width: 20),
                Icon(
                  Icons.restaurant,
                  size: 30,
                  color: Colors.pink[100],
                ),
                const SizedBox(width: 20),
                Text(
                  'Meals',
                  style: TextStyle(
                    color: Colors.pink[100],
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Get.to(
                () => const FilterPage(),
              );
            },
            child: Row(
              children: [
                const SizedBox(width: 20),
                Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.pink[100],
                ),
                const SizedBox(width: 20),
                Text(
                  'Filters',
                  style: TextStyle(
                    color: Colors.pink[100],
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
