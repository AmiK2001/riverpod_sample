import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_testing/app/app.dart';

void main(List<String> args) {
  runApp(const ProviderScope(child: App()));
}
