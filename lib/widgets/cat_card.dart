import 'package:flutter/material.dart';
import 'package:meals_app/models/category_model.dart';

class CatCard extends StatelessWidget {
  final CategoryModel catModel;
  final Function onTab;

  const CatCard({
    Key? key,
    required this.catModel,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab(),
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: catModel.color,
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              catModel.color.withOpacity(0.5),
              catModel.color.withOpacity(0.9),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 10,
          ),
          child: Text(
            catModel.title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
