import 'package:flutter/material.dart';

class FolderNameField extends StatefulWidget {
  const FolderNameField({
    required this.name,
    required this.rename,
    required this.delete,
    super.key,
  });

  final String name;
  final void Function(String) rename;
  final void Function() delete;

  @override
  State<FolderNameField> createState() => _FolderNameFieldState();
}

class _FolderNameFieldState extends State<FolderNameField> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onSecondaryTapUp: (TapUpDetails det) async => showDialog(
        anchorPoint: det.globalPosition,
        builder: (context) => Padding(
          padding: const EdgeInsets.only(
            left: 24,
            top: 24,
          ),
          child: SizedBox(
            width: 80,
            height: 60,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(5),
                      topRight: Radius.circular(5),
                    ),
                  ),
                  width: 80,
                  height: 30,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                      setState(() => active = true);
                    },
                    child: const Text('Rename'),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(5),
                      bottomLeft: Radius.circular(5),
                    ),
                  ),
                  width: 80,
                  height: 30,
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
          ),
        ),
        context: context,
      ),
      child: TextFormField(
        style: Theme.of(context).textTheme.labelLarge,
        decoration: null,
        initialValue: widget.name,
        enabled: active,
        onFieldSubmitted: (text) {
          widget.rename(text);
          setState(() => active = false);
        },
      ),
    );
  }
}
