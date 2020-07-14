import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'user_controller.dart';

class UserPage extends StatefulWidget {
  final String title;
  const UserPage({Key key, this.title = "User"}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends ModularState<UserPage, UserController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color(0xffF4F7FA),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Gilvan Henrique'),
              subtitle: Wrap(
                spacing: 8,
                children: [
                  Text('gilvanhenrique.dev@gmail.com'),
                ],
              )
            ),
            Divider(),
            Text(
              'Minhas Anotações',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ]
        )
      );
  }
}
