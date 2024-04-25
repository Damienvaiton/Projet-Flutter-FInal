// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.monument.entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoriteMonumentsAdapter extends TypeAdapter<FavoriteMonuments> {
  @override
  final int typeId = 2;

  @override
  FavoriteMonuments read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoriteMonuments(
      result: fields[0] as ResultEntity,
    );
  }

  @override
  void write(BinaryWriter writer, FavoriteMonuments obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.result);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoriteMonumentsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
