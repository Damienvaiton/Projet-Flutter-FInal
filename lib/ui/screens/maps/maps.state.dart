import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:template_flutter_but/domain/entities/geo_point_2d.entity.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';
import 'package:template_flutter_but/ui/abstraction/view_state_abs.dart';


part 'maps.state.g.dart';

@CopyWith()
class MapsState extends ViewStateAbs {
  final bool loading;
  final List<Marker> markersList;

  const MapsState({required this.loading, required this.markersList});

const MapsState.initial() : loading = false , markersList =  const <Marker>[];

  @override
  List<Object?> get props => <Object?>[
        loading,
        markersList,
      ];
}
