import 'package:riverpod_testing/data/abstract/notifier.dart';
import 'package:riverpod_testing/domain/counter/counter_state.dart';
import 'package:riverpod_testing/core/log/log.dart';

const _tag = "CounterNotifier";

class CounterNotifier extends Notifier<CounterState> {
  CounterNotifier() : super(const CounterState());

  int get value => state.value;

  void increment() {
    Log.d(_tag, "increment");
    updateState(state.copyWith(value: value + 1));
  }
}
