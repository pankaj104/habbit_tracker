import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.title,
      required this.hint,
      required this.label});

  final TextEditingController title;
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.onPrimary,
        boxShadow: [
          BoxShadow(
              blurRadius: 4,
              offset: Offset.fromDirection(1, 3),
              color: Color(0x21000000))
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: TextField(
        controller: title,
        autofocus: true,
        maxLines: 1,
        maxLength: 120,
        textAlignVertical: TextAlignVertical.bottom,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(11),
          border: InputBorder.none,
          hintText: hint,
          labelText: label,
          counterText: "",
        ),
      ),
    );
  }
}
