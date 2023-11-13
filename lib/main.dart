import 'package:flutter/material.dart';
import 'package:todo_list/list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To-do list',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List daysoftheweek = [
    {"item": "Monday", "value": false},
    {"item": "Tuesday", "value": true},
    {"item": "Wednesday", "value": false},
    {"item": "Thursday", "value": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text(
            "Let's Do It",
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Preview(
                                list: daysoftheweek,
                              )));
                },
                child: Center(
                  child: Container(
                    color: Colors.grey,
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: Center(child: Text("Days of the week")),
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
