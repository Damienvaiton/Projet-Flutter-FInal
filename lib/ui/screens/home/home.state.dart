import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:template_flutter_but/data/network/models/place.model.dart';
import 'package:template_flutter_but/domain/entities/place.entity.dart';
import 'package:template_flutter_but/ui/abstraction/view_state_abs.dart';

part 'home.state.g.dart';

@CopyWith()
class HomeState extends ViewStateAbs {
  final bool loading;
  final PlaceEntity? placeEntity; 

  const HomeState({required this.loading , required this.placeEntity});

  const HomeState.initial() : loading = false , placeEntity = null;

  @override
  List<Object?> get props => <Object?>[
        loading,
        placeEntity,
      ];
}
