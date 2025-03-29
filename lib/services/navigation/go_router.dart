import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_controller.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_view.dart';
import 'package:trainings_planner/features/home/home_view.dart';
import 'package:trainings_planner/features/pdf_viewer/pdf_viewer_controller.dart';
import 'package:trainings_planner/features/pdf_viewer/pdf_viewer_view.dart';
import 'package:trainings_planner/features/training_popup/training_popup.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class GoRouterNavigationService implements NavigationService {
  final GoRouter _router = goRouter;
  Object? result;
  @override
  void goBack({Object? value}) => _router.canPop() ? _router.pop(value) : null;

  @override
  void openExercise() {
    debugPrint('openExercise');
    _router.push('/editExercise');
  }

  @override
  void openPdfPreview() {
    debugPrint('openPdfPreview');
    _router.push('/pdfPreview');
  }

  @override
  void openTrainingPopup() {
    debugPrint('openTrainingPopup');
    _router.push('/trainingPopup');
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
    GoRoute(
      path: '/pdfPreview',
      builder: (context, state) {
        debugPrint('openPdfPreview');
        return BlocProvider(
          create: (_) => PdfViewerController(
            navigationService: context.read<NavigationService>(),
            dataRepository: context.read<DataRepository>(),
          ),
          child: const PdfViewerView(),
        );
      },
    ),
    GoRoute(
      path: '/trainingPopup',
      builder: (context, state) {
        return TrainingPopup(
          navigationService: context.read<NavigationService>(),
        );
      },
    ),
  ],
);
