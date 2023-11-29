import 'package:flutter_riverpod/flutter_riverpod.dart';

final quantityProvider =
    StateNotifierProvider.autoDispose<QuantityNotifier, int>((ref) {
  return QuantityNotifier(1);
});

class QuantityNotifier extends StateNotifier<int> {
  QuantityNotifier(int state) : super(state);
  void increment() {
    state++;
  }

  void decrement() {
    if (state > 1) {
      state--;
    }
  }
}
