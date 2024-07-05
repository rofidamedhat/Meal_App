import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:meals_app/data.dart';
import 'package:meals_app/models/category_model.dart';
import 'package:meals_app/pages/meals_view.dart';
import 'package:meals_app/widgets/cat_card.dart';

class HomePage extends StatelessWidget {
  // final MealsController controller = Get.find();
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: _drawer(context),
      appBar: _appBar(),
      body: _buildUI(),
      bottomNavigationBar: _bottomNavBar(),
    );
  }

  Widget _bottomNavBar() {
    return BottomNavigationBar(
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

  Widget _drawer(BuildContext context) {
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
            onTap: () {},
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
            onTap: () {},
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
