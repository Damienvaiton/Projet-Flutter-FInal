import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:template_flutter_but/application/injections/initializer.dart';
import 'package:template_flutter_but/data/local/database.helper.dart';
import 'package:template_flutter_but/ui/screens/home/home.screen.dart';
import 'package:template_flutter_but/ui/screens/transition.screen.dart';

void main() async {
  initializeInjections();
  await DatabaseHelper.initDatabase();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Site historique',
      home: TransitionScreen(),
    );
  }
}
