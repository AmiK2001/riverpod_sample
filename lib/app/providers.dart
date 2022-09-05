import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_testing/domain/counter/counter_notifier.dart';
import 'package:riverpod_testing/domain/counter/counter_state.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, CounterState>(
  (ref) => CounterNotifier(),
);
