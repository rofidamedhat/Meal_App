import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/meals_controller.dart';
import 'package:meals_app/widgets/bottom_nav_bar.dart';
import 'package:meals_app/widgets/meal_card.dart';

class FavScreen extends StatelessWidget {
  final MealsController controller = Get.find();
  FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text(
        'Favourite',
        style: TextStyle(fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildUI(BuildContext context) {
    return ListView.builder(
      itemCount: controller.favList.length,
      itemBuilder: (context, index) {
        final meal = controller.favList[index];
        return MealCard(
          meal: meal,
          onTab: () {},
        );
      },
    );
  }
}
