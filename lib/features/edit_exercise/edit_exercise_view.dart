import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_controller.dart';
import 'package:trainings_planner/features/edit_exercise/edit_exercise_model.dart';

class EditExerciseView extends StatefulWidget {
  const EditExerciseView({super.key});

  @override
  State<EditExerciseView> createState() => _EditExerciseViewState();
}

class _EditExerciseViewState extends State<EditExerciseView> {
  late TextEditingController titleTextController;
  late TextEditingController descriptionTextController;
  late TextEditingController materialTextController;
  late int difficulty;
  String? image;

  @override
  void initState() {
    super.initState();
    int diff;
    String? img;
    String title;
    String? description;
    List<String> material;
    (diff, img, title, description, material) =
        context.read<EditExerciseController>().state.maybeMap(
              data: (exercise) => (
                exercise.difficulty,
                exercise.image,
                exercise.name,
                exercise.description,
                exercise.material
              ),
              orElse: () => (0, null, '', '', []),
            );
    difficulty = diff;
    image = img;
    titleTextController = TextEditingController(text: title);
    descriptionTextController = TextEditingController(text: description);
    materialTextController = TextEditingController(text: material.join('\n'));
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.read<EditExerciseController>().setExercise(
                    name: titleTextController.text == ''
                        ? 'exercise'
                        : titleTextController.text,
                    description: descriptionTextController.text == ''
                        ? null
                        : descriptionTextController.text,
                    material: materialTextController.text
                        .split('\n')
                        .where((element) => element.isNotEmpty)
                        .toList(),
                    difficulty: difficulty,
                    image: image,
                  );
              context.read<EditExerciseController>().goBack();
            },
          ),
          title: const Text('Edit Exercise'),
        ),
        body: BlocBuilder<EditExerciseController, EditExerciseModel>(
          buildWhen: (previous, current) =>
              previous.runtimeType != current.runtimeType,
          builder: (context, state) => state.map(
            data: (exercise) {
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
                                        difficulty < i
                                            ? Icons.star_border
                                            : Icons.star,
                                        color: Colors.yellowAccent,
                                      ),
                                      onPressed: () =>
                                          setState(() => difficulty = i),
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
                                        if (result == null ||
                                            result.files.isEmpty == true) {
                                          return;
                                        }
                                        if (result.files.firstOrNull!
                                                    .extension !=
                                                'jpg' &&
                                            result.files.firstOrNull!
                                                    .extension !=
                                                'png') {
                                          return;
                                        }
                                        image = result.files.firstOrNull!.path;
                                      },
                                      child: const Text('add image'),
                                    ),
                                    TextButton(
                                      onPressed: () => image = null,
                                      child: const Text('remove image'),
                                    ),
                                  ],
                                ),
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: image != null
                                    ? Image.file(File(image!))
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
                                          .split('\n')
                                          .where(
                                            (element) => element.isNotEmpty,
                                          )
                                          .toList(),
                                      difficulty: difficulty,
                                      image: image,
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: const Color.fromARGB(
                                          255,
                                          40,
                                          40,
                                          139,
                                        ),
                                      ),
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
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(
                                        color: const Color.fromARGB(
                                          255,
                                          40,
                                          40,
                                          139,
                                        ),
                                      ),
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
            loading: (_) => const Center(child: CircularProgressIndicator()),
            empty: (_) => const Center(child: Text('error loading exercise')),
          ),
        ),
      );
}
