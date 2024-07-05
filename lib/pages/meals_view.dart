import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/controller/meals_controller.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/widgets/meal_card.dart';

class MealsView extends StatelessWidget {
  final MealsController controller = Get.find();
  final CategoryModel cat;
  MealsView({
    Key? key,
    required this.cat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return SafeArea(
      child: GetBuilder(
        init: MealsController(),
        builder: (_) {
          return ListView.builder(
            itemCount: controller.addMealsById(cat.id).length,
            itemBuilder: (ctx, index) {
              final meal = controller.addMealsById(cat.id)[index];
              if (controller.loading.isTrue) {
                return const Center(child: CircularProgressIndicator());
              } else {
                return MealCard(
                  meal: meal,
                  onTab: () {},
                );
              }
            },
          );
        },
      ),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: Text(
        cat.title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
