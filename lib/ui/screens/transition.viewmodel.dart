import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_but/ui/screens/transition.state.dart';

final StateNotifierProvider<TransitionViewModel, TransitionState>
    transitionProvider =
    StateNotifierProvider<TransitionViewModel, TransitionState>(
  (StateNotifierProviderRef<TransitionViewModel, TransitionState> ref) =>
      TransitionViewModel(),
);

class TransitionViewModel extends StateNotifier<TransitionState> {
  TransitionViewModel() : super(const TransitionState.initial());

  void updateHome(bool value) {
    state = state.copyWith(home: value);
  }

  void updateIndex(int value) {
    state = state.copyWith(index: value);
  }

  void setIndex(int index) {
    updateIndex(index);
    print('index in setIndex: $index');
  }
}
