import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Riverpod の AsyncValue を良い感じに処理する Widget
class AsyncValueHandler<T extends Object> extends StatelessWidget {
  const AsyncValueHandler({
    super.key,
    required this.value,
    required this.builder,
    this.loading,
    this.error,
  });

  final AsyncValue<T?> value;
  final Widget Function(T) builder;
  final Widget Function()? loading;
  final Widget Function(Object, StackTrace?)? error;

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: (data) => data == null ? const SizedBox() : builder(data),
      error: (e, s) {
        return error?.call(e, s) ?? const SizedBox();
      },
      loading: loading ?? () => const SizedBox(),
    );
  }
}
