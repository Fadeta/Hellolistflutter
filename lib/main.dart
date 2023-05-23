import 'package:flutter/material.dart';
import 'package:hellolist/homepage.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = <String>[
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H'
    ];
    final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100, 90, 80];
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello List"),
      ),
      body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const Homepage(),
                ));
              },
              child: Container(
                height: 150,
                width: 150,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text(' ${entries[index]}')),
              ),
            );
          }),
    );
  }
}
