import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:trainings_planner/provider_widget.dart';
import 'package:trainings_planner/services/navigation/go_router.dart';
import 'package:trainings_planner/services/persistance/model.dart';
import 'package:trainings_planner/theme/theme_data.dart';

void main() async {
  await Hive.initFlutter();
  Hive
    ..registerAdapter(HiveCollectionModelAdapter())
    ..registerAdapter(HiveGroupModelAdapter())
    ..registerAdapter(HiveExerciseModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderWidget(
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: theme,
        routerConfig: goRouter,
      ),
    );
  }
}
