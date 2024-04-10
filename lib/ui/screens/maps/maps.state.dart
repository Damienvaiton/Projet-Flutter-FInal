import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:template_flutter_but/ui/abstraction/view_state_abs.dart';


part 'maps.state.g.dart';

@CopyWith()
class MapsState extends ViewStateAbs {
  final bool loading;

  const MapsState({required this.loading});

  const MapsState.initial() : loading = false;

  @override
  List<Object?> get props => <Object?>[
        loading,
      ];
}
