import 'package:template_flutter_but/domain/entities/result.entity.dart';

class PlaceEntity {
  final int? totalCount;
  final List<ResultEntity>? results;

  const PlaceEntity({required this.totalCount, required this.results});

  @override
  String toString() {
    return 'PlaceEntity{totalCount: $totalCount, results: $results}';
  }
}
