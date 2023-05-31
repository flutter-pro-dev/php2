import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  final String hint;
  const TextFieldCustom({
    super.key,
    required this.hint,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        decoration: InputDecoration(
          isDense: true,
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          hintText: hint,
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 3,
            ), //<-- SEE HERE
            borderRadius: BorderRadius.circular(7.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:
                const BorderSide(width: 0.5, color: Colors.grey), //<-- SEE HERE
            borderRadius: BorderRadius.circular(7.0),
          ),
        ),
      ),
    );
  }
}
