import 'package:flutter/material.dart';
import 'package:meals_app/widgets/category_item.dart';

import '../models/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: const EdgeInsets.all(25),
        children: DUMMY_CATEGORIES
            .map((catData) =>
                CategoryItem(catData.id, catData.title, catData.color))
            .toList(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20),
      ),
    );
  }
}
