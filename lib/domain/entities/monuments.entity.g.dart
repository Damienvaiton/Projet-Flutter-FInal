// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'monuments.entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MonumentsEntityAdapter extends TypeAdapter<MonumentsEntity> {
  @override
  final int typeId = 5;

  @override
  MonumentsEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MonumentsEntity(
      monuments: fields[0] as ResultEntity,
    );
  }

  @override
  void write(BinaryWriter writer, MonumentsEntity obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.monuments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MonumentsEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
