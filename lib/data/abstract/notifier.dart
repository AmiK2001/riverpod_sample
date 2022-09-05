import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_testing/core/log/log.dart';

const _tag = "Notifier";

abstract class Notifier<T> extends StateNotifier<T> {
  Notifier(super.state);

  void updateState(T newState) {
    Log.v("$_tag<${T.toString()}>", "oldState = $state");
    state = newState;
    Log.v("$_tag<${T.toString()}>", "newState = $state");
  }
}
