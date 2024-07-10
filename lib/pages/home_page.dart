import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/data.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/pages/meals_view.dart';
import 'package:meals_app/widgets/bottom_nav_bar.dart';
import 'package:meals_app/widgets/cat_card.dart';
import 'package:meals_app/widgets/custom_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: _appBar(),
      body: _buildUI(),
      bottomNavigationBar: BottomNavBar(),
    );
  }

  PreferredSizeWidget _appBar() {
    return AppBar(
      title: const Text('Pick Your Category'),
    );
  }

  Widget _buildUI() {
    return SafeArea(
      child: GridView.builder(
        padding: const EdgeInsets.all(7),
        itemCount: categoryList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          childAspectRatio: 3 / 2,
        ),
        itemBuilder: (ctx, index) {
          CategoryModel cat = categoryList[index];
          return CatCard(
            catModel: cat,
            onTab: () => Get.to(() => MealsView(cat: cat)),
          );
        },
      ),
    );
  }
}
