import 'package:flutter/material.dart';
import 'package:flutter_todo_list/core/todo_constants.dart';

class TodoPrimaryButton extends StatelessWidget {
  const TodoPrimaryButton(
      {super.key, required this.label, required this.onPressed});
  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      height: MyConstants.buttonHeight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.primary,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(MyConstants.buttonBorderRadius))),
        onPressed: onPressed,
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: MyConstants.paddingSmall),
          child: Text(label,
              style:
                  theme.textTheme.titleMedium?.copyWith(color: Colors.white)),
        ),
      ),
    );
  }
}
