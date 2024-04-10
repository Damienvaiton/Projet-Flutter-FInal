// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transition.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$TransitionStateCWProxy {
  TransitionState home(bool home);

  TransitionState index(int index);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TransitionState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TransitionState(...).copyWith(id: 12, name: "My name")
  /// ````
  TransitionState call({
    bool? home,
    int? index,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfTransitionState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfTransitionState.copyWith.fieldName(...)`
class _$TransitionStateCWProxyImpl implements _$TransitionStateCWProxy {
  const _$TransitionStateCWProxyImpl(this._value);

  final TransitionState _value;

  @override
  TransitionState home(bool home) => this(home: home);

  @override
  TransitionState index(int index) => this(index: index);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `TransitionState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// TransitionState(...).copyWith(id: 12, name: "My name")
  /// ````
  TransitionState call({
    Object? home = const $CopyWithPlaceholder(),
    Object? index = const $CopyWithPlaceholder(),
  }) {
    return TransitionState(
      home: home == const $CopyWithPlaceholder() || home == null
          ? _value.home
          // ignore: cast_nullable_to_non_nullable
          : home as bool,
      index: index == const $CopyWithPlaceholder() || index == null
          ? _value.index
          // ignore: cast_nullable_to_non_nullable
          : index as int,
    );
  }
}

extension $TransitionStateCopyWith on TransitionState {
  /// Returns a callable class that can be used as follows: `instanceOfTransitionState.copyWith(...)` or like so:`instanceOfTransitionState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$TransitionStateCWProxy get copyWith => _$TransitionStateCWProxyImpl(this);
}
