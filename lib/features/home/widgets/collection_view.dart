import 'package:flutter/material.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({required this.collections, super.key});

  final List<HomeModelCollection> collections;

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
