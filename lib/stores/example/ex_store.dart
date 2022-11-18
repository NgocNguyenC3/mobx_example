import 'package:boilerplate/di/components/service_locator.dart';
import 'package:boilerplate/stores/language/language_store.dart';
import 'package:mobx/mobx.dart';

part 'ex_store.g.dart';

class ExStore = _ExStore with _$ExStore;

abstract class _ExStore with Store {
  _ExStore();

  @observable
  ObservableList<int> listData = ObservableList<int>.of([]);

  @action
  void addDataList(String text) {
    final language = getIt<LanguageStore>();

    if (language.locale == text) {
      listData.add(listData.length);
    } else {
      listData.add(listData.length * 100);
    }
  }
}
