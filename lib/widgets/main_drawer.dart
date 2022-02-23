import 'package:flutter/material.dart';
import 'package:meals_app/screen/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  MainDrawer();

  // builderListTile(String title, IconData icon, Function tabHandler) {
  //   return ListTile(
  //     leading: Icon(
  //       icon,
  //       size: 26,
  //     ),
  //     title: Text(
  //       title,
  //       style: const TextStyle(
  //         fontFamily: 'RobotoCondensed',
  //         fontSize: 24,
  //         fontWeight: FontWeight.bold,
  //       ),
  //     ),
  //     onTap: ()=> tabHandler,

  //     //onTap: () => tabHandler,
  //   );
  // }

  builderListTile(
      BuildContext ctx, String title, IconData icon, String tabHandler) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: () {
        Navigator.of(ctx).pushReplacementNamed(tabHandler);
      },
    );

    //onTap: () => tabHandler,
    //);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            child: Text(
              'Cooking up',
              style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 28,
                  color: Theme.of(context).primaryColorLight),
            ),
            height: 120,
            padding: const EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(
            height: 20,
          ),
          builderListTile(context, 'Meals', Icons.restaurant, '/'),
          builderListTile(
            context,
            'Filters',
            Icons.restaurant,
            FiltersScreen.RouteName,
          ),
        ],
      ),
    );
  }
}
