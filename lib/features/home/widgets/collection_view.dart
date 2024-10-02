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
                (collection, index) => Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: LinearBorder.none,
                          backgroundColor: collectionIndex == index
                              ? Theme.of(context).colorScheme.onSurface
                              : Theme.of(context).colorScheme.surface,
                        ),
                        child: FolderNameField(
                          name: widget.collections[index].name,
                          renameGroup: (name) =>
                              context.read<HomeController>().renameCollection(
                                    index,
                                    name,
                                  ),
                        ),
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
                            title: FolderNameField(
                              name: widget.collections[collectionIndex]
                                  .groups[groupIndex].name,
                              renameGroup: (name) =>
                                  context.read<HomeController>().renameGroup(
                                        collectionIndex,
                                        groupIndex,
                                        name,
                                      ),
                            ),
                            children: widget.collections[collectionIndex]
                                .groups[groupIndex].exercises
                                .asMap()
                                .entries
                                .map(
                                  (entry) => ListTile(
                                    title: Text(
                                      entry.value.name,
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge,
                                    ),
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

class FolderNameField extends StatefulWidget {
  const FolderNameField({
    required this.name,
    required this.renameGroup,
    super.key,
  });

  final String name;
  final void Function(String) renameGroup;

  @override
  State<FolderNameField> createState() => _FolderNameFieldState();
}

class _FolderNameFieldState extends State<FolderNameField> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onSecondaryTap: () => setState(() => active = true),
      child: TextFormField(
        style: Theme.of(context).textTheme.labelLarge,
        decoration: null,
        initialValue: widget.name,
        enabled: active,
        onFieldSubmitted: (text) {
          widget.renameGroup(text);
          setState(() => active = false);
        },
      ),
    );
  }
}
