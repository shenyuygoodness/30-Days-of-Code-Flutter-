import 'package:day_11/bar%20graph/individual_bar_graph.dart';
import 'package:flutter/material.dart';

class BarData {
  final double cats;
  final double dogs;
  final double birds;
  final double lizards;

  BarData({
    required this.cats,
    required this.dogs,
    required this.birds,
    required this.lizards,
  });

  List<IndividualBar> barData = [];

  void initializeBardata() {
    barData = [
      IndividualBar(x: 1, y: 3),
      IndividualBar(x: 4, y: 2),
      IndividualBar(x: 2, y: 4),
      IndividualBar(x: 3, y: 1),
    ];
  }
}
