import 'package:flutter/material.dart';
import '../components/custom_floating_actions.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _count = 0;
  void increase() {
    _count++;
    setState(() {});
  }

  void decrease() {
    _count--;
    setState(() {});
  }

  void reset() {
    _count = 0;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: const Center(
          child: Text('Counter Screen'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Clicks Counter',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              "$_count",
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: CustomFLoatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}
