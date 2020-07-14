import 'package:mobx/mobx.dart';

part 'annotations_controller.g.dart';

class AnnotationsController = _AnnotationsControllerBase
    with _$AnnotationsController;

abstract class _AnnotationsControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
