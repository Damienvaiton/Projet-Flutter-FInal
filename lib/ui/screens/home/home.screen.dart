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
    final HomeViewModel viewModel = ref.read(homeProvider.notifier);


    return state.loading
        ? const Center(child: CircularProgressIndicator())
        : ListView.builder(
          controller: viewModel.scrollController ,
            itemCount: state.placeEntity!.results!.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Card(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child:Image(image: NetworkImage(list![index].photo?.url??'https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1665px-No-Image-Placeholder.svg.png'), fit: BoxFit.cover,),),
                        const Padding(padding: EdgeInsets.all(8.0)),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list[index].appellationCourante!,
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],

                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  viewModel.showDetailDialog(context, list[index]);
                },
              );
            },
          );
  }
}
