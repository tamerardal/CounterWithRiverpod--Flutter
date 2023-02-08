import 'dart:ffi';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement/model/counter_model.dart';
import 'package:statemanagement/services/counter_service.dart';

final titleProvider = Provider<String>((ref) => 'Counter with Riverpod!');
final myTextProvider =
    Provider<String>((ref) => 'You have pushed the button this many times:');

final counterStateProvider = StateProvider<int>((ref) {
  return 0;
});

final counterNotifierProvider =
    StateNotifierProvider<CounterService, Counter>((ref) {
  return CounterService();
});

final singleDoubleProvider = Provider<bool>((ref) {
  return ref.watch(counterNotifierProvider).counter % 2 == 0;
});
