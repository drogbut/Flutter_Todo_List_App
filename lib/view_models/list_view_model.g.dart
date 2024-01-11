// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ListviewModel on _ListviewModel, Store {
  late final _$itemsAtom = Atom(name: '_ListviewModel.items', context: context);

  @override
  ObservableList<Item> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(ObservableList<Item> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$_ListviewModelActionController =
      ActionController(name: '_ListviewModel', context: context);

  @override
  void addItem(String title) {
    final _$actionInfo = _$_ListviewModelActionController.startAction(
        name: '_ListviewModel.addItem');
    try {
      return super.addItem(title);
    } finally {
      _$_ListviewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deletedItem(Item item) {
    final _$actionInfo = _$_ListviewModelActionController.startAction(
        name: '_ListviewModel.deletedItem');
    try {
      return super.deletedItem(item);
    } finally {
      _$_ListviewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updatedItem(Item item, String newTitle) {
    final _$actionInfo = _$_ListviewModelActionController.startAction(
        name: '_ListviewModel.updatedItem');
    try {
      return super.updatedItem(item, newTitle);
    } finally {
      _$_ListviewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void savedItem() {
    final _$actionInfo = _$_ListviewModelActionController.startAction(
        name: '_ListviewModel.savedItem');
    try {
      return super.savedItem();
    } finally {
      _$_ListviewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items}
    ''';
  }
}
