import 'package:json_annotation/json_annotation.dart';
import 'package:template_flutter_but/domain/entities/geo_point_2d.entity.dart';

part 'geo_point_2d.model.g.dart';

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class GeoPoint2DModel {

  final double lon;
  final double lat;

  const GeoPoint2DModel({
      required this.lon,
      required this.lat,
  });

  factory GeoPoint2DModel.fromJson(Map<String, dynamic> json) =>
      _$GeoPoint2DModelFromJson(json);

  Map<String, dynamic> toJson() => _$GeoPoint2DModelToJson(this);

  GeoPoint2DEntity get toEntity => GeoPoint2DEntity(
    lon: lon,
    lat: lat
  );

  @override
  String toString() {
    return 'GeoPoint2DModel{lon: $lon, lat: $lat}';
  }
}
