import 'package:hive_flutter/hive_flutter.dart';
import 'package:template_flutter_but/domain/entities/favorite.monument.entity.dart';
import 'package:template_flutter_but/domain/entities/geo_point_2d.entity.dart';
import 'package:template_flutter_but/domain/entities/monuments.entity.dart';
import 'package:template_flutter_but/domain/entities/photo.entity.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';

class DatabaseHelper {
  static final _Favorite = "favoritesMonuments";
  static final _monuments = "monuments";

  static Future<void> initDatabase() async {
    await Hive.initFlutter();
    Hive.registerAdapter(ResultEntityAdapter());
    Hive.registerAdapter(FavoriteMonumentsAdapter());
    Hive.registerAdapter(PhotoEntityAdapter());
    Hive.registerAdapter(GeoPoint2DEntityAdapter());
    Hive.registerAdapter(MonumentsEntityAdapter());
  }

  static Future<void> addFavorite(ResultEntity entity) async {
    final box = await Hive.openBox<FavoriteMonuments>(_Favorite);
    await box.add(FavoriteMonuments(result: entity));
  }

  static Future<void> removeFavorite(ResultEntity entity) async {
    final box = await Hive.openBox<FavoriteMonuments>(_Favorite);
    final key = box.values.firstWhere(
        (element) => element.result.monumHisComId == entity.monumHisComId);
    await box.delete(key);
  }

  static Future<List<FavoriteMonuments>> getAllFavorite() async {
    final box = await Hive.openBox<FavoriteMonuments>(_Favorite);
    return box.values.toList();
  }

  static Future<void> addMonuments(ResultEntity entity) async {
    final box = await Hive.openBox<MonumentsEntity>(_monuments);
    await box.add(MonumentsEntity(monuments: entity));
  }

  static Future<List<MonumentsEntity>> getAllMonuments() async {
    final box = await Hive.openBox<MonumentsEntity>(_monuments);
    return box.values.toList();
  }
}
