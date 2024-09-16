import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class CollectionView extends StatefulWidget {
  const CollectionView({
    required this.collections,
    super.key,
  });

  final List<HomeModelCollection> collections;

  @override
  State<CollectionView> createState() => _CollectionViewState();
}

class _CollectionViewState extends State<CollectionView> {
  int collectionIndex = -1;
  @override
  Widget build(BuildContext context) => Stack(
        children: [
          Column(
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
              ...widget.collections.mapWithIndex(
                (e, index) => Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: LinearBorder.none,
                          backgroundColor: collectionIndex == index
                              ? Theme.of(context).colorScheme.onSurface
                              : Theme.of(context).colorScheme.surface,
                        ),
                        child: Text(e.name),
                        onPressed: () {
                          context.read<HomeController>().setActiveExercise(
                                collectionIndex: index,
                                groupIndex: -1,
                                exerciseIndex: -1,
                              );
                          setState(() {
                            collectionIndex = index;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Theme.of(context).colorScheme.onPrimary,
                height: 2,
              ),
              Expanded(
                child: collectionIndex == -1
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 8, 4),
                        child: ListView.builder(
                          itemBuilder: (_, groupIndex) => ExpansionTile(
                            onExpansionChanged: (value) => context
                                .read<HomeController>()
                                .setActiveExercise(
                                  collectionIndex: collectionIndex,
                                  groupIndex: groupIndex,
                                  exerciseIndex: -1,
                                ),
                            childrenPadding: const EdgeInsets.only(left: 16),
                            title: Text(
                              widget.collections[collectionIndex]
                                  .groups[groupIndex].name,
                            ),
                            children: widget.collections[collectionIndex]
                                .groups[groupIndex].exercises
                                .asMap()
                                .entries
                                .map(
                                  (entry) => ListTile(
                                    title: Text(entry.value.name),
                                    onTap: () => context
                                        .read<HomeController>()
                                        .setActiveExercise(
                                          collectionIndex: collectionIndex,
                                          groupIndex: groupIndex,
                                          exerciseIndex: entry.key,
                                        ),
                                  ),
                                )
                                .toList(),
                          ),
                          itemCount:
                              widget.collections[collectionIndex].groups.length,
                        ),
                      ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: FloatingActionButton(
                shape: const CircleBorder(),
                onPressed: () => showMenu(
                  context: context,
                  position: RelativeRect.fill,
                  items: [
                    PopupMenuItem(
                      value: 0,
                      child: ListTile(
                        title: const Text('Add collection'),
                        onTap: () {
                          Navigator.pop(context);
                          context.read<HomeController>().addCollection();
                        },
                      ),
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: ListTile(
                        title: const Text('Add group'),
                        onTap: () {
                          Navigator.pop(context);
                          context.read<HomeController>().addGroup();
                        },
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: ListTile(
                        title: const Text('Add exercise'),
                        onTap: () {
                          Navigator.pop(context);
                          context.read<HomeController>().addExercise();
                        },
                      ),
                    ),
                  ],
                ),
                child: const Icon(Icons.add),
              ),
            ),
          ),
        ],
      );
}
