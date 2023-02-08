import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement/providers/providers.dart';

class DecreaseFAB extends ConsumerWidget {
  const DecreaseFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        debugPrint("Decrease widget is triggered!");
        ref.read(counterNotifierProvider.notifier).decrease();
      },
      tooltip: 'Increment',
      child: const Icon(Icons.exposure_minus_1),
    );
  }
}

class IncreaseFAB extends ConsumerWidget {
  const IncreaseFAB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
      onPressed: () {
        debugPrint("Increase widget is triggered!");
        ref.read(counterNotifierProvider.notifier).increase();
      },
      tooltip: 'Increment',
      child: const Icon(Icons.exposure_plus_1),
    );
  }
}
