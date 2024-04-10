import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_but/ui/screens/home/home.state.dart';
import 'package:template_flutter_but/ui/screens/home/home.viewmodel.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends ConsumerState<HomeScreen> {
  List<String> list = [];

  @override
  Widget build(BuildContext context) {
    final HomeState state = ref.watch(homeProvider);

    return Column(
      children: [
        state.loading ? const CircularProgressIndicator() : const Text('Home')
      ],
    );
  }
}