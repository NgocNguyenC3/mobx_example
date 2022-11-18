// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ex_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ExStore on _ExStore, Store {
  final _$listDataAtom = Atom(name: '_ExStore.listData');

  @override
  ObservableList<int> get listData {
    _$listDataAtom.reportRead();
    return super.listData;
  }

  @override
  set listData(ObservableList<int> value) {
    _$listDataAtom.reportWrite(value, super.listData, () {
      super.listData = value;
    });
  }

  final _$_ExStoreActionController = ActionController(name: '_ExStore');

  @override
  void addDataList(String text) {
    final _$actionInfo =
        _$_ExStoreActionController.startAction(name: '_ExStore.addDataList');
    try {
      return super.addDataList(text);
    } finally {
      _$_ExStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
listData: ${listData}
    ''';
  }
}
