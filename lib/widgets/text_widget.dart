import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement/providers/providers.dart';

class MyText extends ConsumerWidget {
  const MyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("MyText widget is triggered!");

    // TODO: implement build
    return Consumer(builder: (builder, ref, child) {
      return Text(ref.watch(myTextProvider));
    });
  }
}

class MyCounterText extends ConsumerWidget {
  const MyCounterText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("MyCounterText widget is triggered!");

    return Text(
      // toString() method is overrided in counter_model.dart file.
      ref.watch(counterNotifierProvider).toString(),
      style: Theme.of(context).textTheme.headlineMedium,
    );
  }
}

class IsDouble extends ConsumerWidget {
  const IsDouble({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    debugPrint("IsDouble widget is triggered!");

    // TODO: implement build
    return Text(ref.watch(singleDoubleProvider) ? "DOUBLE" : "SINGLE");
  }
}
