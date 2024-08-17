import 'package:flutter/material.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({
    required this.collections,
    required this.setActiveCollection,
    super.key,
  });

  final List<HomeModelCollection> collections;
  final void Function({
    required int collectionIndex,
    required int exerciseIndex,
  }) setActiveCollection;

  @override
  Widget build(BuildContext context) => Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              'collections',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Divider(
            color: Theme.of(context).colorScheme.onPrimary,
            height: 2,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 8, 8, 4),
              child: ListView.builder(
                itemBuilder: (context, index) => ExpansionTile(
                  childrenPadding: const EdgeInsets.only(left: 16),
                  title: Text(collections[index].name),
                  children: collections[index]
                      .exercises
                      .asMap()
                      .entries
                      .map(
                        (entry) => ListTile(
                          title: Text(entry.value.name),
                          onTap: () => setActiveCollection(
                            collectionIndex: index,
                            exerciseIndex: entry.key,
                          ),
                        ),
                      )
                      .toList(),
                ),
                itemCount: collections.length,
              ),
            ),
          ),
        ],
      );
}
