import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitchedOn = false;
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Learn Flutter'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.back_hand),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  debugPrint('Actions');
                },
                icon: const Icon(Icons.medical_information))
          ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/einstein.jpg',
              height: 55,
              width: double.infinity,
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(color: Colors.black),
            Container(
              margin: const EdgeInsets.all(10.01),
              color: Colors.blueGrey,
              width: double.infinity,
              child: const Center(
                child: Text(
                  'This is a text widget',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Text('Elevated Button'),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint('Outlined Button');
              },
              child: const Text('Outlined Button'),
            ),
            TextButton(
              onPressed: () {
                debugPrint('Text Button');
              },
              child: const Text('Text Button'),
            ),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint("Gesture row");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.local_fire_department,
                    color: isSwitchedOn ? Colors.blue : Colors.red,
                  ),
                  const Text('row widget'),
                  Icon(
                    Icons.local_fire_department,
                    color: isSwitchedOn ? Colors.red : Colors.blue,
                  )
                ],
              ),
            ),
            Switch(
                value: isSwitchedOn,
                onChanged: (bool newBool) {
                  setState(() {
                    isSwitchedOn = newBool;
                  });
                }),
            Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
