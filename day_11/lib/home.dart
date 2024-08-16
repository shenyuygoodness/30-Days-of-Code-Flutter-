import 'package:day_11/bar%20graph/bar_graph.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<double> pet = [
    4.40,
    2.50,
    42.42,
    100.20,
    68.34,
    90.10,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: SizedBox(height: 200, child: MyBarChart(pet: pet)),
        ),
      ),
    );
  }
}
