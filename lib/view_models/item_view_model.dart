import 'package:mobx/mobx.dart';

part 'item_view_model.g.dart';

class ItemViewModel = _ItemViewModel with _$ItemViewModel;

abstract class _ItemViewModel with Store {
  _ItemViewModel({required this.title, required this.isCompleted});

  @observable
  String? title = '';

  @observable
  bool? isCompleted = false;
}
