import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:template_flutter_but/ui/abstraction/view_state_abs.dart';


part 'transition.state.g.dart';

@CopyWith()
class TransitionState extends ViewStateAbs {
  final bool home;
  final int index;

  const TransitionState({required this.home , required this.index});

  const TransitionState.initial() : home = true , index = 0;

  @override
  List<Object?> get props => <Object?>[
        home,
        index
      ];
}