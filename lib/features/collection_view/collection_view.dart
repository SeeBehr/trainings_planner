import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart' hide State;
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';
import 'package:trainings_planner/features/home/widgets/folder_name_field.dart';

class CollectionView extends StatelessWidget {
  const CollectionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) => BlocBuilder<HomeController, HomeModel>(
        builder: (context, state) {
          return state.maybeMap(
              data: (data) => Stack(
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
                          ...data.collections.mapWithIndex(
                            (collection, index) => Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: LinearBorder.none,
                                      backgroundColor:
                                          data.activeCollection == index
                                              ? Theme.of(context)
                                                  .colorScheme
                                                  .onSurface
                                              : Theme.of(context)
                                                  .colorScheme
                                                  .surface,
                                    ),
                                    child: FolderNameField(
                                      key: ValueKey(collection.id),
                                      collectionIndex: index,
                                      groupIndex: -1,
                                      exerciseIndex: -1,
                                      rename: (name) => context
                                          .read<HomeController>()
                                          .renameCollection(
                                            index,
                                            name,
                                          ),
                                      delete: () => context
                                          .read<HomeController>()
                                          .deleteCollection(index),
                                    ),
                                    onPressed: () {
                                      context
                                          .read<HomeController>()
                                          .setActiveExercise(
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
                            child: data.activeCollection == -1
                                ? const SizedBox.shrink()
                                : Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 8, 8, 4),
                                    child: ListView.builder(
                                      itemBuilder: (_, groupIndex) =>
                                          ExpansionTile(
                                        onExpansionChanged: (value) => context
                                            .read<HomeController>()
                                            .setActiveExercise(
                                              collectionIndex:
                                                  data.activeCollection,
                                              groupIndex: groupIndex,
                                              exerciseIndex: -1,
                                            ),
                                        childrenPadding:
                                            const EdgeInsets.only(left: 16),
                                        title: FolderNameField(
                                          key: ValueKey(
                                            data
                                                .collections[
                                                    data.activeCollection]
                                                .groups[groupIndex]
                                                .id,
                                          ),
                                          collectionIndex:
                                              data.activeCollection,
                                          groupIndex: groupIndex,
                                          exerciseIndex: -1,
                                          rename: (name) => context
                                              .read<HomeController>()
                                              .renameGroup(
                                                data.activeCollection,
                                                groupIndex,
                                                name,
                                              ),
                                          delete: () => context
                                              .read<HomeController>()
                                              .deleteGroup(
                                                data.activeCollection,
                                                groupIndex,
                                              ),
                                        ),
                                        children: data
                                            .collections[data.activeCollection]
                                            .groups[groupIndex]
                                            .exercises
                                            .asMap()
                                            .entries
                                            .map(
                                              (entry) => ListTile(
                                                title: FolderNameField(
                                                  key: ValueKey(
                                                    data
                                                        .collections[data
                                                            .activeCollection]
                                                        .groups[groupIndex]
                                                        .exercises[entry.key]
                                                        .id,
                                                  ),
                                                  delete: () => context
                                                      .read<HomeController>()
                                                      .deleteExercise(),
                                                  collectionIndex:
                                                      data.activeCollection,
                                                  groupIndex: groupIndex,
                                                  exerciseIndex: entry.key,
                                                  rename: (name) => context
                                                      .read<HomeController>()
                                                      .renameExercise(
                                                        data.activeCollection,
                                                        groupIndex,
                                                        entry.key,
                                                        name,
                                                      ),
                                                ),
                                                onTap: () => context
                                                    .read<HomeController>()
                                                    .setActiveExercise(
                                                      collectionIndex:
                                                          data.activeCollection,
                                                      groupIndex: groupIndex,
                                                      exerciseIndex: entry.key,
                                                    ),
                                              ),
                                            )
                                            .toList(),
                                      ),
                                      itemCount: data
                                          .collections[data.activeCollection]
                                          .groups
                                          .length,
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
                                    context
                                        .read<HomeController>()
                                        .addCollection();
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
                                    if (!context
                                        .read<HomeController>()
                                        .addGroup()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
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
                                    if (!context
                                        .read<HomeController>()
                                        .addExercise()) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text(
                                            'Please first select the group '
                                            'in which you want to add the exercise.',
                                          ),
                                        ),
                                      );
                                    } else {
                                      context
                                          .read<HomeController>()
                                          .openExercise();
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
                  ),
              orElse: () => const CircularProgressIndicator());
        },
      );
}
