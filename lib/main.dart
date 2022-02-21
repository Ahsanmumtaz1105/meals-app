import 'package:flutter/material.dart';
import 'screen/category-meals.dart';
import 'screen/categories-screen.dart';
import 'screen/meal-detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
        ),
        fontFamily: 'Raleway',
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      //home: CategoriesScreen(),
      initialRoute: '/', // default is '/'
      routes: {
        '/': (ctx) => CategoriesScreen(),
        CategoryMealsScreen.RouteName: (ctx) => CategoryMealsScreen(),
        MealDetailScreen.RouteName: (ctx) => MealDetailScreen(),
      },
    );
  }
}
