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
  Offset anchorPoint = Offset.zero;
  @override
  Widget build(BuildContext context) {
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
                  setState(() => active = true);
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
          style: Theme.of(context).textTheme.labelLarge,
          decoration: null,
          initialValue: widget.name,
          enabled: active,
          onFieldSubmitted: (text) {
            widget.rename(text);
            setState(() => active = false);
          },
        ),
      ),
    );
  }
}
