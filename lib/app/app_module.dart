import 'package:cadernovirtual_mobile/app/modules/annotations/annotations_module.dart';
import 'package:cadernovirtual_mobile/app/modules/login/login_module.dart';
import 'package:cadernovirtual_mobile/app/modules/signup/signup_module.dart';
import 'package:cadernovirtual_mobile/app/modules/user/user_module.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:cadernovirtual_mobile/app/app_widget.dart';
import 'package:cadernovirtual_mobile/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
    Router(Modular.initialRoute, module: HomeModule()),
    Router('/signup', module: SignupModule()),
    Router('/auth', module: LoginModule()),
    Router('/annotations', module: AnnotationsModule()),
    Router('/user', module: UserModule()),
  ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
