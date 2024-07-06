import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/meals_controller.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/models/meal_model.dart';

class MealDetailsPage extends StatelessWidget {
  final MealsController controller = Get.find();
  final MealModel mealModel;
  final CategoryModel catModel;
  MealDetailsPage({
    Key? key,
    required this.mealModel,
    required this.catModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: Text(mealModel.title),
      actions: [
        Obx(
          () => IconButton(
              onPressed: () {
                controller.isFav.value = !controller.isFav.value;
                controller.showingSnackBar();
              },
              icon: Icon(
                controller.isFav.value ? Icons.star : Icons.star_border,
                color: Colors.amber,
              )),
        )
      ],
    );
  }

  Widget _buildUI(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(mealModel.imageUrl),
            Column(
              children: [
                const SizedBox(height: 10),
                const Text(
                  'Ingredients',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                for (String ing in mealModel.ingredients)
                  Text(
                    '$ing ,',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                const SizedBox(height: 10),
                const Text(
                  'Steps',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 15),
                for (String step in mealModel.steps)
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '$step ,',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
