import 'package:flutter/material.dart';
import 'package:flutter_todo_list/views/widgets/todo_primary_button.dart';

import '../core/todo_constants.dart';

class NotItemView extends StatelessWidget {
  const NotItemView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.only(
          left: MyConstants.paddingXLarge,
          right: MyConstants.paddingXLarge,
          top: MyConstants.paddingXXLarge),
      child: Column(
        children: [
          Text(
            "There are not item !",
            style: theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: MyConstants.paddingMedium),
          Text(
            "Are you a productive person? I think you should clik here the add"
            " button and add bunch of items to your todo list!",
            style: theme.textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: MyConstants.paddingXLarge),
          TodoPrimaryButton(onPressed: () {}, label: "Add Somethings 🥳")
        ],
      ),
    );
  }
}
