import 'package:flutter/material.dart';

class FunctionChildWidgetPage extends StatelessWidget {
  final Function(int) functionCallback;

  const FunctionChildWidgetPage({Key? key, required this.functionCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => functionCallback(5),
      child: const Text("Fx Callback"),
    );
  }
}
