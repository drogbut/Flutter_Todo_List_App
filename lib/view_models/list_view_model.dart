import 'package:mobx/mobx.dart';

import '../models/item.dart';

part 'list_view_model.g.dart';

class ListviewModel = _ListviewModel with _$ListviewModel;

abstract class _ListviewModel with Store {
  @observable
  ObservableList<Item> items = ObservableList<Item>();

  @action
  void addItem(String title) {
    final item = Item(title: title, isCompleted: false);
    items.add(item);
  }

  @action
  void deletedItem(Item item) {
    items.removeWhere((x) => x == item);
  }

  @action
  void updatedItem(Item item, String newTitle) {
    /// TODO
  }

  @action
  void savedItem() {
    /// TODO
  }
}
