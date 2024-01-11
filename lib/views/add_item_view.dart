import 'package:flutter/material.dart';
import 'package:flutter_todo_list/core/todo_constants.dart';
import 'package:flutter_todo_list/views/widgets/todo_primary_button.dart';

class AddItemView extends StatelessWidget {
  final _textController = TextEditingController();
  AddItemView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    //final list = Provider.of<TodoList>(context);

    return Padding(
      padding: const EdgeInsets.all(MyConstants.paddingMedium),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Add an item 🖋️",
            style: theme.textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: MyConstants.paddingMedium),
          TextField(
            decoration: InputDecoration(
              hintText: "Enter something here...",
              fillColor: theme.colorScheme.secondaryContainer,
              filled: true,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
            ),
            controller: _textController,
            textInputAction: TextInputAction.done,
            onSubmitted: (String value) {
              //list.addTodo(value);
              //_textController.clear();
            },
          ),
          const SizedBox(height: MyConstants.paddingMedium),
          SizedBox(
            width: double.infinity,
            child: TodoPrimaryButton(
              label: 'Save'.toUpperCase(),
              onPressed: () {},
            ),
          )
        ],
      ),
    );
  }
}
