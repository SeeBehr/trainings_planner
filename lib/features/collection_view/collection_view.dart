import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/home/widgets/folder_name_field.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({
    required this.collections,
    required this.activeCollection,
    super.key,
  });

  final List<HomeModelCollection> collections;
  final int activeCollection;

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
              ...collections.mapWithIndex(
                (collection, index) => Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: LinearBorder.none,
                          backgroundColor: activeCollection == index
                              ? Theme.of(context).colorScheme.onSurface
                              : Theme.of(context).colorScheme.surface,
                        ),
                        child: FolderNameField(
                          key: ValueKey(collection.id),
                          name: collections[index].name,
                          rename: (name) =>
                              context.read<HomeController>().renameCollection(
                                    index,
                                    name,
                                  ),
                          delete: () => context
                              .read<HomeController>()
                              .deleteCollection(index),
                        ),
                        onPressed: () {
                          context.read<HomeController>().setActiveExercise(
                                collectionIndex: index,
                                groupIndex: -1,
                                exerciseIndex: -1,
                              );
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
                child: activeCollection == -1
                    ? const SizedBox.shrink()
                    : Padding(
                        padding: const EdgeInsets.fromLTRB(0, 8, 8, 4),
                        child: ListView.builder(
                          itemBuilder: (_, groupIndex) => ExpansionTile(
                            onExpansionChanged: (value) => context
                                .read<HomeController>()
                                .setActiveExercise(
                                  collectionIndex: activeCollection,
                                  groupIndex: groupIndex,
                                  exerciseIndex: -1,
                                ),
                            childrenPadding: const EdgeInsets.only(left: 16),
                            title: FolderNameField(
                              key: ValueKey(
                                collections[activeCollection]
                                    .groups[groupIndex]
                                    .id,
                              ),
                              name: collections[activeCollection]
                                  .groups[groupIndex]
                                  .name,
                              rename: (name) =>
                                  context.read<HomeController>().renameGroup(
                                        activeCollection,
                                        groupIndex,
                                        name,
                                      ),
                              delete: () =>
                                  context.read<HomeController>().deleteGroup(
                                        activeCollection,
                                        groupIndex,
                                      ),
                            ),
                            children: collections[activeCollection]
                                .groups[groupIndex]
                                .exercises
                                .asMap()
                                .entries
                                .map(
                                  (entry) => ListTile(
                                    title: FolderNameField(
                                      key: ValueKey(
                                        collections[activeCollection]
                                            .groups[groupIndex]
                                            .exercises[entry.key]
                                            .id,
                                      ),
                                      delete: () => context
                                          .read<HomeController>()
                                          .deleteExercise(),
                                      name: entry.value.name,
                                      rename: (name) => context
                                          .read<HomeController>()
                                          .renameExercise(
                                            activeCollection,
                                            groupIndex,
                                            entry.key,
                                            name,
                                          ),
                                    ),
                                    onTap: () => context
                                        .read<HomeController>()
                                        .setActiveExercise(
                                          collectionIndex: activeCollection,
                                          groupIndex: groupIndex,
                                          exerciseIndex: entry.key,
                                        ),
                                  ),
                                )
                                .toList(),
                          ),
                          itemCount:
                              collections[activeCollection].groups.length,
                        ),
                      ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: PopupMenuButton(
                color: Theme.of(context).colorScheme.secondary,
                shape: Border.all(),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 0,
                    child: ListTile(
                      title: const Text(
                        'Add collection',
                        style: TextStyle(
                          color: Color.fromARGB(255, 40, 40, 139),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        context.read<HomeController>().addCollection();
                      },
                    ),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      title: const Text(
                        'Add group',
                        style: TextStyle(
                          color: Color.fromARGB(255, 40, 40, 139),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        if (!context.read<HomeController>().addGroup()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please first select the collection '
                                'in which you want to add the group.',
                              ),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: ListTile(
                      title: const Text(
                        'Add exercise',
                        style: TextStyle(
                          color: Color.fromARGB(255, 40, 40, 139),
                        ),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        if (!context.read<HomeController>().addExercise()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text(
                                'Please first select the group '
                                'in which you want to add the exercise.',
                              ),
                            ),
                          );
                        } else {
                          context.read<HomeController>().openExercise();
                        }
                      },
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: const Text(
                      'Save all',
                      style: TextStyle(
                        color: Color.fromARGB(255, 40, 40, 139),
                      ),
                    ),
                    onTap: () {
                      context.read<HomeController>().saveAll();
                    },
                  ),
                ],
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 32,
                    color: Color.fromARGB(255, 40, 40, 139),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
}
