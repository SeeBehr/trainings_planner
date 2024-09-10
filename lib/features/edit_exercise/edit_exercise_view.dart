import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_controller.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';

class EditExerciseView extends StatelessWidget {
  const EditExerciseView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => context.read<EditExerciseController>().goBack(),
          ),
          title: const Text('Edit Exercise'),
        ),
        body: BlocBuilder<EditExerciseController, EditExerciseModel>(
          builder: (context, state) => state.map(
            (exercise) {
              final titleTextController =
                  TextEditingController(text: exercise.name);
              final descriptionTextController =
                  TextEditingController(text: exercise.description);
              final materialTextController =
                  TextEditingController(text: exercise.material.join('\n'));
              return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(8),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          child: ListView(
                            children: <Widget>[
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: <Widget>[
                                    const SizedBox(
                                      width: 150,
                                      child: Text('Title'),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                              Radius.circular(16),
                                            ),
                                          ),
                                          contentPadding: EdgeInsets.all(8),
                                          hintText: 'title',
                                        ),
                                        controller: titleTextController,
                                        maxLines: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Row(
                                children: <Widget>[
                                  const SizedBox(
                                    width: 150,
                                    child: Text('difficulty'),
                                  ),
                                  const SizedBox(width: 8),
                                  for (int i = 5; i > 0; i--)
                                    IconButton(
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      icon: Icon(
                                        exercise.difficulty < i
                                            ? Icons.star_border
                                            : Icons.star,
                                        color: Colors.yellowAccent,
                                      ),
                                      onPressed: () => context
                                          .read<EditExerciseController>()
                                          .setDifficulty(difficulty: i),
                                    ),
                                ],
                              ),
                              const Divider(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      width: 150,
                                      child: Text('description'),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(8),
                                          hintText: 'add your description',
                                        ),
                                        controller: descriptionTextController,
                                        maxLines: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      width: 150,
                                      child: Text('material'),
                                    ),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          contentPadding: EdgeInsets.all(8),
                                          hintText: 'separate with linebreaks',
                                        ),
                                        controller: materialTextController,
                                        maxLines: null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Divider(),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const SizedBox(
                                      width: 150,
                                      child: Text('image'),
                                    ),
                                    TextButton(
                                      onPressed: () async {
                                        final result = await FilePicker.platform
                                            .pickFiles();
                                        if (result == null) return;
                                        if (result.files.firstOrNull!
                                                    .extension !=
                                                'jpg' &&
                                            result.files.firstOrNull!
                                                    .extension !=
                                                'png') {
                                          return;
                                        }
                                        // ignore: use_build_context_synchronously
                                        context
                                            .read<EditExerciseController>()
                                            .setImage(
                                              image: result
                                                  .files.firstOrNull!.path,
                                            );
                                      },
                                      child: const Text('add image'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        context
                                            .read<EditExerciseController>()
                                            .setImage(image: null);
                                      },
                                      child: const Text('remove image'),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: exercise.image != null
                                    ? Image.file(File(exercise.image!))
                                    : const Icon(Icons.image),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  Theme.of(context).colorScheme.secondary,
                                ),
                                alignment: Alignment.center,
                                overlayColor:
                                    const WidgetStatePropertyAll<Color>(
                                  Colors.transparent,
                                ),
                                shadowColor:
                                    const WidgetStatePropertyAll<Color>(
                                  Colors.transparent,
                                ),
                              ),
                              onPressed: () {
                                context
                                    .read<EditExerciseController>()
                                    .setExercise(
                                      name: titleTextController.text,
                                      description:
                                          descriptionTextController.text,
                                      material: materialTextController.text
                                          .split('\n'),
                                    );
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  left: 16,
                                  right: 16,
                                ),
                                child: Text(
                                  'save',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(
                                  Theme.of(context).colorScheme.secondary,
                                ),
                                alignment: Alignment.center,
                                overlayColor:
                                    const WidgetStatePropertyAll<Color>(
                                  Colors.transparent,
                                ),
                                shadowColor:
                                    const WidgetStatePropertyAll<Color>(
                                  Colors.transparent,
                                ),
                              ),
                              onPressed: () {
                                titleTextController.dispose();
                                descriptionTextController.dispose();
                                materialTextController.dispose();
                                Navigator.of(context).pop();
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  top: 8,
                                  bottom: 8,
                                  left: 16,
                                  right: 16,
                                ),
                                child: Text(
                                  'cancel',
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            empty: (_) => const Center(child: CircularProgressIndicator()),
          ),
        ),
      );
}
