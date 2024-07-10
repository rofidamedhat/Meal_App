import 'package:flutter/material.dart';

class FilterPage extends StatelessWidget {
  const FilterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters '),
      ),
      body: const Column(
        children: [
          // CustomListTile(
          //   title: 'Gluten-free',
          //   subTitle: 'Only Includes gluten free meals',
          // ),
          // CustomListTile(
          //   title: 'Lactose-free',
          //   subTitle: 'Only Includes Lactose free meals',
          // ),
          // CustomListTile(
          //   title: 'Vegetarian',
          //   subTitle: 'Only Includes Vegetarian meals',
          // ),
          // CustomListTile(
          //   title: 'Vegan',
          //   subTitle: 'Only Includes Vegan meals',
          // ),
        ],
      ),
    );
  }
}
