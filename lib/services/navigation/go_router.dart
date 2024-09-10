import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_controller.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_view.dart';
import 'package:trainings_planner/features/home/home_view.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class GoRouterNavigationService implements NavigationService {
  final GoRouter _router = goRouter;
  @override
  void goBack() => _router.canPop() ? _router.pop() : null;

  @override
  void openExercise() {
    debugPrint('openExercise');
    _router.push('/editExercise');
  }
}

final goRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: '/editExercise',
      builder: (context, state) {
        debugPrint('openExercise: id');
        return BlocProvider<EditExerciseController>(
          create: (_) => EditExerciseController(
            navigationService: context.read<NavigationService>(),
            dataRepository: context.read<DataRepository>(),
          ),
          child: const EditExerciseView(),
        );
      },
    ),
  ],
);
