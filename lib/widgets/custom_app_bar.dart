import 'package:flutter/material.dart';
import 'package:meals_app/controller/meals_controller.dart';
import 'package:meals_app/models/meal_model.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final MealModel mealModel;
  const CustomAppBar({super.key, required this.mealModel});

  @override
  Widget build(BuildContext context) {
    final MealsController controller = MealsController.instance;
    return AppBar(
      title: Text(mealModel.title),
      // leading: IconButton(
      //   onPressed: () {
      //     Get.back();
      //   },
      //   icon: const Icon(Icons.arrow_back),
      // ),
      actions: [
        IconButton(
            onPressed: () {
              if (mealModel.isFav == false) {
                //controller.mealList.where((element) => element.isFav==true)
                //controller.checkIfMealIsFavOrNot(mealModel) == false
                controller.addMealToFavList(mealModel);
              } else {
                controller.removeMealFromFavList(mealModel);
              }

              // controller.showingSnackBar(mealModel);
            },
            icon: mealModel.isFav
                ? const Icon(
                    Icons.star,
                    color: Colors.amber,
                  )
                : const Icon(
                    Icons.star_border,
                    color: Colors.amber,
                  )),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
