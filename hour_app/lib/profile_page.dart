import 'package:flutter/material.dart';

const int itemCount = 20;

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          title: Text('Item ${(index + 1)}'),
          leading: const Icon(Icons.ac_unit),
          trailing: const Icon(Icons.wysiwyg),
          onTap: () {
            debugPrint('Item ${(index + 1)}');
          },
        );
      },
    );
  }
}
