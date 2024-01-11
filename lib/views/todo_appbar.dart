import 'package:flutter/material.dart';
import 'package:flutter_todo_list/core/todo_constants.dart';

class TodoAppBar extends StatelessWidget {
  const TodoAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: MyConstants.paddingXXLarge,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          myButton(context: context, label: "Edit", onPressed: () {}),
          myButton(context: context, label: "Add", onPressed: () {}),
        ],
      ),
    );
  }

  Widget myButton(
      {required BuildContext context,
      required String label,
      required VoidCallback onPressed}) {
    final theme = Theme.of(context);
    return Padding(
      padding:
          const EdgeInsets.symmetric(horizontal: MyConstants.paddingMedium),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          label,
          style: theme.textTheme.titleMedium?.copyWith(
              color: theme.colorScheme.primary, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
