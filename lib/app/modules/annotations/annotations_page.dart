import 'package:cadernovirtual_mobile/app/modules/annotations/components/annotations_list_page.dart';
import 'package:cadernovirtual_mobile/app/modules/annotations/components/new_annotation.dart';
import 'package:cadernovirtual_mobile/app/modules/user/user_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'annotations_controller.dart';

class AnnotationsPage extends StatefulWidget {
  final String title;
  const AnnotationsPage({Key key, this.title = "Annotations"})
      : super(key: key);

  @override
  _AnnotationsPageState createState() => _AnnotationsPageState();
}

class _AnnotationsPageState
    extends ModularState<AnnotationsPage, AnnotationsController> {
  //use 'controller' variable to access controller

  List<Widget> _widgetList = [
    AnnotationsListPage(),
    NewAnnotationPage(),
    UserPage(),
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5,
        selectedItemColor: Colors.blue[900],
        unselectedItemColor: Colors.blue[600],
        type: BottomNavigationBarType.shifting,
        currentIndex: _index,
        onTap: (index) {
          setState(() {
            _index = index;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.note,
              ),
              title: Text('Anotações Públicas', style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.note_add,
              ),
              title: Text('Criar Anotação', style: TextStyle())),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.perm_contact_calendar,
              ),
              title: Text('Perfil', style: TextStyle())),
        ],
      ),
      body: _widgetList[_index],
    );
  }
}

Widget _buildAppBar() {
  return AppBar(
    brightness: Brightness.dark,
    elevation: 5,
    backgroundColor: Colors.blue[600],
    automaticallyImplyLeading: false,
    title: Text(
      'Caderno Virtual',
      style: TextStyle(color: Colors.white),
    ),
    leading: Icon(
      Icons.format_list_bulleted,
      color: Colors.white,
      size: 30,  
    ),
  );
}

