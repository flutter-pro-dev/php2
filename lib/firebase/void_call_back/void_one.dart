import 'package:flutter/material.dart';

class VoidChildWidgetPage extends StatelessWidget {
  final VoidCallback voidCallback;

  const VoidChildWidgetPage({Key? key, required this.voidCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => voidCallback(),
      child: const Text("Void Callback"),
    );
  }
}
