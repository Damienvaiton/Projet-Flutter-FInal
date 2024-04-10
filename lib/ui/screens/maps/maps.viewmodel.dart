import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_but/application/injections/initializer.dart';
import 'package:template_flutter_but/domain/repository/places.repository.dart';
import 'package:template_flutter_but/ui/abstraction/view_model_abs.dart';
import 'package:template_flutter_but/ui/screens/home/home.state.dart';
import 'package:template_flutter_but/ui/screens/maps/maps.state.dart';

///
final StateNotifierProvider<MapsViewModel, MapsState> homeProvider =
    StateNotifierProvider<MapsViewModel, MapsState>(
  (StateNotifierProviderRef<MapsViewModel, MapsState> ref) => MapsViewModel(
    placesRepository: injector<PlacesRepository>(),
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

  void _init() {
    // TODO - api call
    _placesRepository.getPlaces();
  }
}
