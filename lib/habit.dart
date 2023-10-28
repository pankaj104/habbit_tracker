import 'package:flutter/material.dart';
import 'package:habbit_tracker/habbitData.dart';

class Habit extends StatefulWidget {
  const Habit({super.key, required this.habitData});
  final HabitData habitData;

  set setId(int input) {
    habitData.id = input;
  }

  Map<String, dynamic> toMap() {
    return {
      "id": habitData.id,
      "title": habitData.title,
    };
  }

  @override
  State<Habit> createState() => _HabitState();
}

class _HabitState extends State<Habit> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
