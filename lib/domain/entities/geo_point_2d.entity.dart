import 'package:hive_flutter/hive_flutter.dart';

part 'geo_point_2d.entity.g.dart';

@HiveType(typeId: 4)
class GeoPoint2DEntity {
  @HiveField(0)
  final double lon;
  @HiveField(1)
  final double lat;

  const GeoPoint2DEntity(
      {required this.lon,
      required this.lat,
  });

  @override
  String toString() {
    return 'GeoPoint2DEntity{lon: $lon, lat: $lat}';
  }
}
