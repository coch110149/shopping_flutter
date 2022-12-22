import 'package:flutter/material.dart';
import 'package:hour_app/learn_flutter_page.dart';
import 'package:hour_app/meal.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key, required this.meals});

  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meals'),
      ),
      body: ListView.builder(
          itemCount: meals.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text("${meals[index].title} ${meals[index].description}"),
              leading: const Icon(Icons.ac_unit),
              trailing: const Icon(Icons.wysiwyg),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const LearnFlutterPage(),
                        settings: RouteSettings(arguments: meals[index])));
              },
            );
          }),
    );
  }
}
