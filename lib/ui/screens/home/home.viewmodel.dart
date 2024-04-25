import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_but/application/injections/initializer.dart';
import 'package:template_flutter_but/data/local/database.helper.dart';
import 'package:template_flutter_but/domain/entities/favorite.monument.entity.dart';
import 'package:template_flutter_but/domain/entities/place.entity.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';
import 'package:template_flutter_but/domain/repository/places.repository.dart';
import 'package:template_flutter_but/foundation/client/dio.client.dart';
import 'package:template_flutter_but/ui/abstraction/view_model_abs.dart';
import 'package:template_flutter_but/ui/screens/home/home.state.dart';

///
final StateNotifierProvider<HomeViewModel, HomeState> homeProvider =
    StateNotifierProvider<HomeViewModel, HomeState>(
  (StateNotifierProviderRef<HomeViewModel, HomeState> ref) => HomeViewModel(
    placesRepository: injector<PlacesRepository>(),
  ),
);

class HomeViewModel extends ViewModelAbs<HomeViewModel, HomeState> {
  final PlacesRepository _placesRepository;

  HomeViewModel({required PlacesRepository placesRepository})
      : _placesRepository = placesRepository,
        super(HomeState.initial()) {
    _init();
  }

  void updateLoading(bool value) {
    state = state.copyWith(loading: value);
  }

  void updatePlaceModel(PlaceEntity placeEntity) {
    state = state.copyWith(placeEntity: placeEntity);
  }

  void _init() {
    getPlaces();
  }

  void getPlaces() async {
    updateLoading(true);
    final PlaceEntity placeEntity = await _placesRepository.getPlaces();
    updateLoading(false);
    updatePlaceModel(placeEntity);
  }

  void getPaginatePlaces(int offset) async {
    updateLoading(true);
    final PlaceEntity placeEntity =
        await _placesRepository.getPaginatePlaces(offset);
    updateLoading(false);
    updatePlaceModel(placeEntity);
  }

  Future<void> showDetailDialog(BuildContext context, ResultEntity data) async {
    bool result = false;
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
                    FloatingActionButton(
                      child: result
                          ? const Icon(Icons.favorite)
                          : const Icon(Icons.favorite_border),
                      onPressed: () async {
                        result = await _addFavorite(data);
                        if (result) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Added to favorite')));
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text('Already in favorite')));
                        }
                      },
                    )
                  ],
                ),
              ));
        });
  }

  Future<bool> _addFavorite(ResultEntity result) async {
    var test = DatabaseHelper.getAllFavorite();
    var test2 = await test;
    if (test2.any(
        (element) => element.result.monumHisComId == result.monumHisComId)) {
      return false;
    }
    await DatabaseHelper.addFavorite(result);
    return true;
  }
}
