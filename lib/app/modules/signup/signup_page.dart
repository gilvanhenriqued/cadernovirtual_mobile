import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'signup_controller.dart';

class SignupPage extends StatefulWidget {
  final String title;
  const SignupPage({Key key, this.title = "Signup"}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends ModularState<SignupPage, SignupController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
          child: Icon(Icons.keyboard_backspace),
        ),
        actions: <Widget>[
          Container(
                margin: EdgeInsets.all(16),
                child: FlatButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/auth');
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blue[600],
                    ),
                  ),
                ),
              ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 450,
            decoration: BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.black26,
                    offset: new Offset(0.0, 2.0),
                    blurRadius: 25.0,
                  )
                ],
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(32),
                    bottomRight: Radius.circular(32))),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(left: 20, top: 30),
                  child: Text(
                    'Bem vindo ao Caderno Virtual.',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, top: 8),
                  child: Text(
                    'Informe seus dados para criar uma conta.',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 32, bottom: 8),
                  child: TextField(
                    style: TextStyle(fontSize: 18),
                    keyboardType: TextInputType.text,
                    textCapitalization: TextCapitalization.words,
                    decoration: InputDecoration(
                      hintText: 'Nome',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    style: TextStyle(fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'E-mail',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(left: 20, right: 20, top: 8, bottom: 8),
                  child: TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: 18),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: 'Senha',
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
                    margin: EdgeInsets.only(top: 32, bottom: 16),
                    decoration: BoxDecoration(
                      color: Colors.blue[600],
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    width: 250,
                    child: FlatButton(
                      child: Text('Criar Conta',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/auth');
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
