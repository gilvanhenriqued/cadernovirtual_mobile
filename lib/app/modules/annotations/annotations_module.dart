import 'annotations_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'annotations_page.dart';

class AnnotationsModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AnnotationsController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => AnnotationsPage()),
      ];

  static Inject get to => Inject<AnnotationsModule>.of();
}
