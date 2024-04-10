import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_but/ui/screens/home/home.screen.dart';
import 'package:template_flutter_but/ui/screens/maps/maps.screen.dart';
import 'package:template_flutter_but/ui/screens/transition.viewmodel.dart';

class TransitionScreen extends ConsumerStatefulWidget {
  const TransitionScreen({super.key});

  @override
  ConsumerState<TransitionScreen> createState() => _TransitionScreenState();
}

class _TransitionScreenState extends ConsumerState<TransitionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: <ConsumerStatefulWidget>[const HomeScreen(), const MapsScreen()][ref.watch(transitionProvider).index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: ref.watch(transitionProvider).index,
        onTap: (int index) {
         ref.read(transitionProvider.notifier).setIndex(index);
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map, color: Colors.black),
            label: 'Maps',
          ),
        ],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
