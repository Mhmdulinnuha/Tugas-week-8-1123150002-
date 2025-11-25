import 'package:flutter/material.dart';

class MyPages extends StatelessWidget {
  const MyPages({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: const Text("Dashboard"), actions: const []),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0)
          ),
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
            const Card(
              color: Colors.red,
              child: Text("Card with color", style: TextStyle(fontSize: 16.0)),
            ),
          ]),
        ),
      ),
      );
  }
}