import 'package:hive_flutter/hive_flutter.dart';

part 'photo.entity.g.dart';


@HiveType(typeId: 3)
class PhotoEntity {
  @HiveField(0)
  final int? exifOrientation;
  @HiveField(1)
  final bool? thumbnail;
  @HiveField(2)
  final String? filename;
  @HiveField(3)
  final String? format;
  @HiveField(4)
  final int? width;
  @HiveField(5)
  final String? id;
  @HiveField(6)
  final int? height;
  @HiveField(7)
  final List<String>? colorSummary;
  @HiveField(8)
  final String? url;

  const PhotoEntity(
      {required this.exifOrientation,
      required this.thumbnail,
      required this.filename,
      required this.format,
      required this.width,
      required this.id,
      required this.height,
      required this.colorSummary,
      required this.url
  });

  @override
  String toString() {
    return 'PhotoEntity{exifOrientation: $exifOrientation, thumbnail: $thumbnail, filename: $filename, format: $format, width: $width, id: $id, height: $height, colorSummary: $colorSummary, url: $url}';
  }
}
