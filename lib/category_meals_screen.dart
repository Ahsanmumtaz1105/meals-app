import 'package:flutter/material.dart';
import './models/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  late final categoryId;
  late final categoryTitle;
  static const RouteName = '/category-meals';

  CategoryMealsScreen();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    categoryId = routeArgs['id'];
    categoryTitle = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryId);
      },
    ).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
