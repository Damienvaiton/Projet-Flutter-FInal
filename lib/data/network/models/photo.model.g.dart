// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoModel _$PhotoModelFromJson(Map<String, dynamic> json) => PhotoModel(
      exifOrientation: json['exif_orientation'] as int?,
      thumbnail: json['thumbnail'] as bool?,
      filename: json['filename'] as String?,
      format: json['format'] as String?,
      width: json['width'] as int?,
      id: json['id'] as String?,
      height: json['height'] as int?,
      colorSummary: (json['color_summary'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$PhotoModelToJson(PhotoModel instance) =>
    <String, dynamic>{
      'exif_orientation': instance.exifOrientation,
      'thumbnail': instance.thumbnail,
      'filename': instance.filename,
      'format': instance.format,
      'width': instance.width,
      'id': instance.id,
      'height': instance.height,
      'color_summary': instance.colorSummary,
      'url': instance.url,
    };
