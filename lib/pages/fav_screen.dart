import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/meals_controller.dart';
import 'package:meals_app/pages/meal_details_page.dart';
import 'package:meals_app/widgets/bottom_nav_bar.dart';
import 'package:meals_app/widgets/custom_drawer.dart';
import 'package:meals_app/widgets/meal_card.dart';

class FavScreen extends StatelessWidget {
  FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      drawer: const CustomDrawer(),
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
    MealsController controller = MealsController.instance;

    return GetBuilder<MealsController>(
        builder: (_) => ListView.builder(
              itemCount: controller.mealList
                  .where((element) => element.isFav == true)
                  .length,
              itemBuilder: (context, index) {
                final meal = controller.mealList
                    .where((element) => element.isFav == true)
                    .toList()[index];
                return MealCard(
                  meal: meal,
                  onTab: () {
                    Get.to(() => MealDetailsPage(mealModel: meal));
                  },
                );
              },
            ));
  }
}
