
import 'package:flutter/material.dart';

class CustomFLoatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;
  const CustomFLoatingActions({
    super.key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.remove),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.restore),
        ),
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
