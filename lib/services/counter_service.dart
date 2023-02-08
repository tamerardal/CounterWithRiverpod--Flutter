import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement/model/counter_model.dart';

class CounterService extends StateNotifier<Counter> {
  CounterService() : super(Counter(0));

  void increase() {
    state = Counter(state.counter + 1);
  }

  void decrease() {
    state = Counter(state.counter - 1);
  }
}
