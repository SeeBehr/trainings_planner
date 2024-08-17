import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/home/widgets/home_view_data.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeController, HomeModel>(
        builder: (context, state) => state.map(
          loading: (_) => const Center(
            child: CircularProgressIndicator(),
          ),
          data: (collections) => HomeViewData(collections: collections),
          error: (error) => Center(
            child: Text(error.toString()),
          ),
        ),
      ),
    );
  }
}
