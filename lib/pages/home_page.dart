import 'package:flutter/material.dart';
import 'package:helloworld/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  final int days = 30;
  final String name = "Meet Patel";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Center(
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Text("Welcome to $days days of Flutter by $name"),
        ),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
