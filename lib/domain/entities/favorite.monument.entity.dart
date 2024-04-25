import 'package:flutter/foundation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';


part 'favorite.monument.entity.g.dart';

@HiveType(typeId: 2)
class FavoriteMonuments {
  @HiveField(0)
  final ResultEntity result;

  const FavoriteMonuments({required this.result});

  @override
  String toString() {
  return 'FavoriteMonuments(favoriteList: $result)';
  }
}
