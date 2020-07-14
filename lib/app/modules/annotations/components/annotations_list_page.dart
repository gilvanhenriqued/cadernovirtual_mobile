import 'package:flutter/material.dart';

class AnnotationsListPage extends StatefulWidget {
  @override
  _AnnotationsListPageState createState() => _AnnotationsListPageState();
}

class _AnnotationsListPageState extends State<AnnotationsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xffF4F7FA),
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Resumo de Citologia'),
              subtitle: Text('Por Ayanna Magnah'),
            ),
            Divider(),
            ListTile(
              title: Text('Resumo de Eletromagnetismo'),
              subtitle: Text('Por Rafael Garcia'),
            ),
            Divider(),
            ListTile(
              title: Text('Resumo de Grandezas'),
              subtitle: Text('Por Gilvan Henrique'),
            ),
            Divider(),
            ListTile(
              title: Text('Resumo de Grandezas'),
              subtitle: Text('Por Gilvan Henrique'),
            ),
            Divider(),
            ListTile(
              title: Text('Resumo de Grandezas'),
              subtitle: Text('Por Gilvan Henrique'),
            ),
            Divider(),
            ListTile(
              title: Text('Resumo de Grandezas'),
              subtitle: Text('Por Gilvan Henrique'),
            ),
            Divider(),
          ],
        )
      ),
    );
  }
}