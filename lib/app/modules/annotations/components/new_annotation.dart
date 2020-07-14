import 'package:flutter/material.dart';

class NewAnnotationPage extends StatefulWidget {
  @override
  _NewAnnotationPageState createState() => _NewAnnotationPageState();
}

class _NewAnnotationPageState extends State<NewAnnotationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    'Nova Anotação',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 8),
                  child: TextField(
                    style: TextStyle(fontSize: 15),
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    expands: false,
                    minLines: 1,
                    maxLines: 2,
                    decoration: InputDecoration(
                      hintText: 'Título...',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 8),
                  child: TextField(
                    style: TextStyle(fontSize: 15),
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    minLines: 1,
                    maxLines: 30,
                    decoration: InputDecoration(
                      hintText: 'Escreva aqui sua anotação...',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Container(
                      margin: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          color: Colors.blue[600], shape: BoxShape.circle),
                      child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context, '/annotation');
                        },
                        icon: Icon(Icons.add),
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
