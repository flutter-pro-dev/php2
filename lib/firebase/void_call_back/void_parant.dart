import 'package:flutter/material.dart';
import 'package:society/firebase/void_call_back/void_one.dart';
import 'package:society/firebase/void_call_back/void_two.dart';

class ParentWidgetPage extends StatefulWidget {
  const ParentWidgetPage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<ParentWidgetPage> createState() => _ParentWidgetPageState();
}

class _ParentWidgetPageState extends State<ParentWidgetPage> {
  int _counter = 0;

  Future<void> voidCallback() async {
    setState(() {
      _counter++;
    });
  }

  void _functionCallback(int i) {
    setState(() {
      _counter += i;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times pp:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            VoidChildWidgetPage(voidCallback: voidCallback),
            FunctionChildWidgetPage(functionCallback: _functionCallback),
          ],
        ),
      ),
    );
  }
}
