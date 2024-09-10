import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/repositories/data/implementation.dart';
import 'package:trainings_planner/repositories/data/interface.dart';
import 'package:trainings_planner/services/navigation/go_router.dart';
import 'package:trainings_planner/services/navigation/interface.dart';

class ProviderWidget extends StatelessWidget {
  const ProviderWidget({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<NavigationService>(
          create: (context) => GoRouterNavigationService(),
        ),
        RepositoryProvider<DataRepository>(
          create: (context) => DataRepositoryImplementation(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => HomeController(
              dataRepository: context.read<DataRepository>(),
              navigationService: context.read<NavigationService>(),
            ),
          ),
        ],
        child: child,
      ),
    );
  }
}
