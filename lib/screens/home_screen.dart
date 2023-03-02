import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle fontSize30 = TextStyle(fontSize: 30);

    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        title: const Center(
          child: Text('Counter App'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Clicks Counter',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            Text(
              '0',
              style: fontSize30,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => print('add counter'),
        child: const Icon(Icons.add),
      ),
    );
  }
}
