import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:template_flutter_but/domain/entities/result.entity.dart';
import 'package:template_flutter_but/ui/screens/home/home.state.dart';
import 'package:template_flutter_but/ui/screens/home/home.viewmodel.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends ConsumerState<HomeScreen> {
  

  @override
  Widget build(BuildContext context) {
    
    final HomeState state = ref.watch(homeProvider);
    List<ResultEntity>? list = state.placeEntity!.results;

    return state.loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
            itemCount: state.placeEntity!.results!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                
              );
            },
          );
  }
}
