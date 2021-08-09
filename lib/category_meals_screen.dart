import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  // final String categoryId;
  // final String categoryTitle;

  // CategoryMealsScreen(
  //   this.categoryId,
  //   this.categoryTitle,
  // );

  @override
  Widget build(BuildContext context) {
    final route = ModalRoute.of(context);
    if (route == null) return SizedBox.shrink();
    final routeaArgs = route.settings.arguments as Map<String, String>;
    final categoryTitle = routeaArgs['title'];
    final categoryId = routeaArgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle.toString()),
      ),
      body: Center(
        child: Text(
          'The Recipe for the chosen category',
        ),
      ),
    );
  }
}
