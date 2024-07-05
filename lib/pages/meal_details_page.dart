// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/models/meal_model.dart';

class MealDetailsPage extends StatelessWidget {
  final MealModel mealModel;
  final CategoryModel catModel;
  const MealDetailsPage({
    Key? key,
    required this.mealModel,
    required this.catModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
