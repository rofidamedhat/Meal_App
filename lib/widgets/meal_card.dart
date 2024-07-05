// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal_model.dart';

class MealCard extends StatelessWidget {
  final MealModel meal;
  final Function onTab;
  const MealCard({
    Key? key,
    required this.meal,
    required this.onTab,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTab(),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.9,
        height: MediaQuery.of(context).size.height / 2.9,
        margin: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 7,
        ),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(
            Radius.circular(10),
          ),
          image: DecorationImage(
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(children: [
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 6,
              decoration: const BoxDecoration(
                color: Colors.black26,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Text(
                        meal.title,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // const CircularProgressIndicator(
                        //   color: Colors.white,

                        // ),
                        const SizedBox(width: 10),
                        const Icon(
                          Icons.schedule,
                          size: 25,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '${meal.duration.toInt()}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          'min',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.work),
                        const SizedBox(width: 2),
                        Text(
                          meal.complexity
                              .name, // controller.mealList[index].complexity.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        const SizedBox(width: 10),
                        const Icon(Icons.attach_money,
                            size: 25, color: Colors.white),
                        const SizedBox(width: 2),
                        Text(
                          meal.affordability.name,
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
