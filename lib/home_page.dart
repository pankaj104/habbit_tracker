import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:habbit_tracker/add_habbit.dart';
import 'package:habbit_tracker/theme/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Habbit"),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddHabbit()),
            );
          },
          child: Icon(
            Icons.add,
            semanticLabel: 'Save',
            color: Colors.white,
            size: 35.0,
          ),
        );
      }),
    );
  }
}
