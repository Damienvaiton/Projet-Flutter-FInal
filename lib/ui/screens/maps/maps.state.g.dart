// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maps.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$MapsStateCWProxy {
  MapsState loading(bool loading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MapsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MapsState(...).copyWith(id: 12, name: "My name")
  /// ````
  MapsState call({
    bool? loading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfMapsState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfMapsState.copyWith.fieldName(...)`
class _$MapsStateCWProxyImpl implements _$MapsStateCWProxy {
  const _$MapsStateCWProxyImpl(this._value);

  final MapsState _value;

  @override
  MapsState loading(bool loading) => this(loading: loading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `MapsState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// MapsState(...).copyWith(id: 12, name: "My name")
  /// ````
  MapsState call({
    Object? loading = const $CopyWithPlaceholder(),
  }) {
    return MapsState(
      loading: loading == const $CopyWithPlaceholder() || loading == null
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
    );
  }
}

extension $MapsStateCopyWith on MapsState {
  /// Returns a callable class that can be used as follows: `instanceOfMapsState.copyWith(...)` or like so:`instanceOfMapsState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$MapsStateCWProxy get copyWith => _$MapsStateCWProxyImpl(this);
}
