import 'package:flutter/material.dart';
import '/widgets/main_drawer.dart';

class FiltersScreen extends StatelessWidget {
  static const RouteName = '/filters';

  FiltersScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Filters'),
      ),
      body: const Center(
        child: Text('hello'),
      ),
      drawer: MainDrawer(),
    );
  }
}
