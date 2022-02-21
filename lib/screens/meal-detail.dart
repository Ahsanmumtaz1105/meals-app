import 'package:flutter/material.dart';
import 'package:meals_app/models/dummy_data.dart';
import 'package:meals_app/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  static const RouteName = '/meal-detail';
  //final mealId;
  MealDetailScreen();

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final Meal mealDetail;
    // mealId = routeArgs['id']
    mealDetail = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(mealDetail.title),
      ),
      // body: ListView.builder(
      //   itemBuilder: (ctx, index) {
      //     return Text('hello')},
      //   itemCount: categoryMeals.length,
      // )
    );
  }
}
