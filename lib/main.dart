import 'package:flutter/material.dart';
import 'package:trainings_planner/features/home/home_view.dart';
import 'package:trainings_planner/provider_widget.dart';
import 'package:trainings_planner/theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: const ProviderWidget(child: HomeView()),
    );
  }
}
