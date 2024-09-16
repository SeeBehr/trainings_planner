import 'package:trainings_planner/features/home/home_model.dart';

abstract class PersistenceService {
  Future<void> saveData(List<HomeModelCollection> data);
  Future<List<HomeModelCollection>> loadData();
}
