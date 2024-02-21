import 'package:flutter/material.dart';

/// A card that displays the current value of a counter.
class CounterCard extends StatelessWidget {
  const CounterCard({super.key, required this.count, required this.buildName});

  /// The number of times the button has been tapped.
  final int count;
  final String buildName;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(48)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              buildName,
            ),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
