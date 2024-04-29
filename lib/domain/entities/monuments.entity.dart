import 'package:hive_flutter/hive_flutter.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';

part 'monuments.entity.g.dart';

@HiveType(typeId: 5)
class MonumentsEntity {
  @HiveField(0)
  final ResultEntity monuments;

  const MonumentsEntity({required this.monuments});

  @override
  String toString() {
    return 'FavoriteMonuments(favoriteList: $monuments)';
  }


}
