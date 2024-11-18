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
      onSecondaryTap: () async => showDialog(
        builder: (context) => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                setState(() => active = true);
              },
              child: const Text('Rename'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                widget.delete();
              },
              child: const Text('Delete'),
            ),
          ],
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
