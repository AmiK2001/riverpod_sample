import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_testing/app/providers.dart';

class Counter extends HookConsumerWidget {
  static const counterButtonKey = Key("counterButton");

  const Counter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);

    return ElevatedButton(
      key: counterButtonKey,
      onPressed: () => ref.read(counterProvider.notifier).increment(),
      child: Text('${counter.value}'),
    );
  }
}
