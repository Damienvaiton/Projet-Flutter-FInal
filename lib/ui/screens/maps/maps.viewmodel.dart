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
  final BuildContext context;

  MapsViewModel({required PlacesRepository placesRepository, required this.context})
      : _placesRepository = placesRepository,
        super(const MapsState.initial()) {
    _init();
  }
  void updateLoading(bool value) {
    state = state.copyWith(loading: value);
  }

  void addGeoPoint(BuildContext context,ResultEntity geoPoint) {
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
        onTap: () {
          showDetailDialog(
            context,
            geoPoint,
          );
        },
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
      addGeoPoint(context,result);
    }
    updateLoading(false);
  }

Future<void> showDetailDialog(BuildContext context, ResultEntity data) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              title: Text(data.appellationCourante ?? 'No name'),
              content: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        const Text("Protection : "),
                        Text(data.niveauDeProtection ?? "No protection")
                      ],
                    ),
                    Image(
                      image: NetworkImage(data.photo?.url ??
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png'),
                      fit: BoxFit.cover,
                    ),
                    Text(data.appellationCourante ?? 'No name',
                        style: const TextStyle(
                            fontSize: 15.0, fontWeight: FontWeight.bold)),
                    Text(data.adresseBanSig ?? 'No address',
                        style: const TextStyle(fontSize: 10.0)),
                    Text(
                      data.historique ?? 'No description',
                      style: const TextStyle(fontSize: 8.0),
                    ),
                  ],
                ),
              ));
        });
  }



}
