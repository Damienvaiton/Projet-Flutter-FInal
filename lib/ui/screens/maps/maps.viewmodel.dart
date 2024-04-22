import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:template_flutter_but/application/injections/initializer.dart';
import 'package:template_flutter_but/domain/entities/geo_point_2d.entity.dart';
import 'package:template_flutter_but/domain/entities/place.entity.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';
import 'package:template_flutter_but/domain/repository/places.repository.dart';
import 'package:template_flutter_but/ui/abstraction/view_model_abs.dart';
import 'package:template_flutter_but/ui/screens/home/home.state.dart';
import 'package:template_flutter_but/ui/screens/home/home.viewmodel.dart';
import 'package:template_flutter_but/ui/screens/maps/maps.state.dart';

///
final StateNotifierProvider<MapsViewModel, MapsState> mapsProvider =
    StateNotifierProvider<MapsViewModel, MapsState>(
  (StateNotifierProviderRef<MapsViewModel, MapsState> ref2) => MapsViewModel(
    placesRepository: injector<PlacesRepository>(),
    //Y a besoin du context ici
  ),
);

class MapsViewModel extends ViewModelAbs<MapsViewModel, MapsState> {
  final PlacesRepository _placesRepository;

  MapsViewModel({required PlacesRepository placesRepository})
      : _placesRepository = placesRepository,
        super(const MapsState.initial()) {
    _init();
  }
  void updateLoading(bool value) {
    state = state.copyWith(loading: value);
  }

  void addGeoPoint(ResultEntity geoPoint) {
    updateLoading(true);
    List<Marker> markersList;
    markersList = List.from(state.markersList);
    if (geoPoint.lat != null || geoPoint.long != null) {
      markersList.add(Marker(
        markerId: MarkerId(geoPoint.monumHisComId.toString()),
        position: LatLng(
          double.parse(geoPoint.lat ?? "0"),
          double.parse(geoPoint.long ?? "0"),
        ),
        infoWindow: InfoWindow(
          title: geoPoint.appellationCourante ?? "",
          snippet: geoPoint.niveauDeProtection ?? "",
        ),
      ));
    }
    state = state.copyWith(markersList: markersList);
    updateLoading(false);
  }

  void _init() {
    getPlaces();
  }

  void getPlaces() async {
    updateLoading(true);
    final PlaceEntity placeEntity = await _placesRepository.getPlaces();
    for (ResultEntity result in placeEntity.results!) {
      addGeoPoint(result);
    
    updateLoading(false);
  }


}
}
