import 'package:uuid/uuid.dart';

class Item {
  final String id;
  final String title;
  final bool isCompleted;

  Item({
    required this.title,
    required this.isCompleted,
    String? id,
  }) : id = id ?? const Uuid().v4();

  Item copyWith({
    String? id,
    String? title,
    bool? isCompleted,
  }) {
    return Item(
      id: id ?? this.id,
      title: title ?? this.title,
      isCompleted: isCompleted ?? this.isCompleted,
    );
  }

  Item toggleCompletion() {
    return copyWith(isCompleted: !isCompleted);
  }
}
