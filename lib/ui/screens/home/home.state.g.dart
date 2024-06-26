// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home.state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$HomeStateCWProxy {
  HomeState loading(bool loading);

  HomeState placeEntity(PlaceEntity? placeEntity);

  HomeState favoriteList(List<ResultEntity> favoriteList);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    bool? loading,
    PlaceEntity? placeEntity,
    List<ResultEntity>? favoriteList,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfHomeState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfHomeState.copyWith.fieldName(...)`
class _$HomeStateCWProxyImpl implements _$HomeStateCWProxy {
  const _$HomeStateCWProxyImpl(this._value);

  final HomeState _value;

  @override
  HomeState loading(bool loading) => this(loading: loading);

  @override
  HomeState placeEntity(PlaceEntity? placeEntity) =>
      this(placeEntity: placeEntity);

  @override
  HomeState favoriteList(List<ResultEntity> favoriteList) =>
      this(favoriteList: favoriteList);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `HomeState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// HomeState(...).copyWith(id: 12, name: "My name")
  /// ````
  HomeState call({
    Object? loading = const $CopyWithPlaceholder(),
    Object? placeEntity = const $CopyWithPlaceholder(),
    Object? favoriteList = const $CopyWithPlaceholder(),
  }) {
    return HomeState(
      loading: loading == const $CopyWithPlaceholder() || loading == null
          ? _value.loading
          // ignore: cast_nullable_to_non_nullable
          : loading as bool,
      placeEntity: placeEntity == const $CopyWithPlaceholder()
          ? _value.placeEntity
          // ignore: cast_nullable_to_non_nullable
          : placeEntity as PlaceEntity?,
      favoriteList:
          favoriteList == const $CopyWithPlaceholder() || favoriteList == null
              ? _value.favoriteList
              // ignore: cast_nullable_to_non_nullable
              : favoriteList as List<ResultEntity>,
    );
  }
}

extension $HomeStateCopyWith on HomeState {
  /// Returns a callable class that can be used as follows: `instanceOfHomeState.copyWith(...)` or like so:`instanceOfHomeState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$HomeStateCWProxy get copyWith => _$HomeStateCWProxyImpl(this);
}
