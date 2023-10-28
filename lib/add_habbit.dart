import 'package:flutter/material.dart';
import 'package:habbit_tracker/home_page.dart';
import 'package:habbit_tracker/widgets/custom_text_field.dart';
import 'package:provider/provider.dart';

class AddHabbit extends StatefulWidget {
  const AddHabbit({super.key});

  @override
  State<AddHabbit> createState() => _AddHabbitState();
}

class _AddHabbitState extends State<AddHabbit> {
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Habbit"),
      ),
      floatingActionButton: Builder(builder: (BuildContext context) {
        return FloatingActionButton(
          onPressed: () {
            if (title.text.isNotEmpty) {
              Provider.of(context, listen: false)
                  .addHabbit(title.text.toString());
              Navigator.pop(context, HomePage());
            } else {
              print("sdf");
            }
          },
          child: const Icon(
            Icons.check,
            semanticLabel: 'Save',
            color: Colors.white,
            size: 35.0,
          ),
        );
      }),
      body: Builder(
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(children: [
              CustomTextField(title: title, hint: 'Exercise', label: 'Habit')
            ]),
          );
        },
      ),
    );
  }
}
