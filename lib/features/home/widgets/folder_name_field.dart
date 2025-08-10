import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trainings_planner/features/home/home_controller.dart';
import 'package:trainings_planner/features/home/home_model.dart';

class FolderNameField extends StatefulWidget {
  const FolderNameField({
    required this.collectionIndex,
    required this.groupIndex,
    required this.exerciseIndex,
    required this.rename,
    required this.delete,
    super.key,
  });

  final int collectionIndex;
  final int groupIndex;
  final int exerciseIndex;
  final void Function(String?) rename;
  final void Function() delete;

  @override
  State<FolderNameField> createState() => _FolderNameFieldState();
}

class _FolderNameFieldState extends State<FolderNameField> {
  bool active = false;
  Offset anchorPoint = Offset.zero;
  TextEditingController controller = TextEditingController();
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
    focusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeController, HomeModel>(
      builder: (context, state) => state.maybeMap(
        data: (data) {
          var name = '';
          try {
            final collection = data.collections[widget.collectionIndex];
            name = collection.name;
            final group = collection.groups[widget.groupIndex];
            name = group.name;
            final exercise = group.exercises[widget.exerciseIndex];
            name = exercise.name;
          } catch (e) {/*no need for catch just to get the correct name*/}
          return _buildFolderNameField(context, name);
        },
        orElse: () => const SizedBox.shrink(),
      ),
    );
  }

  Widget _buildFolderNameField(
    BuildContext context,
    String name,
  ) {
    controller.text = name;
    return MouseRegion(
      onHover: (event) => setState(() => anchorPoint = event.position),
      child: GestureDetector(
        onSecondaryTap: () => showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            anchorPoint.dx,
            anchorPoint.dy,
            anchorPoint.dx,
            anchorPoint.dy,
          ),
          items: [
            PopupMenuItem<TextButton>(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    active = true;
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      controller.selection = TextSelection(
                        baseOffset: 0,
                        extentOffset: controller.text.length,
                      );
                      focusNode.requestFocus();
                    });
                  });
                },
                child: const Text('Rename'),
              ),
            ),
            PopupMenuItem<TextButton>(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  widget.delete();
                },
                child: const Text('Delete'),
              ),
            ),
          ],
        ),
        child: TextFormField(
          key: ValueKey(
            'folderNameField${widget.collectionIndex}_${widget.groupIndex}_${widget.exerciseIndex}',
          ),
          restorationId: 'folder_name_field',
          style: Theme.of(context).textTheme.labelLarge,
          controller: controller,
          enabled: active,
          focusNode: focusNode,
          onFieldSubmitted: (text) {
            widget.rename(text);
            setState(() => active = false);
          },
          onTapOutside: (event) {
            widget.rename(null);
            setState(() => active = false);
          },
        ),
      ),
    );
  }
}
