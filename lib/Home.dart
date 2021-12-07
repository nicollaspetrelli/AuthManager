import 'package:authmanagerapp/Addnew.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Icon _defaultIcon = Icon(Icons.password);

  void _createNewPassword() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Addnew()),
    );
  }

  void _defaultDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Seus dados de acesso são:'),
          content: Text('Senha: **************'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sua lista de senhas'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {
              Navigator.pushReplacementNamed(context, "/login");
            },
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              alignment: Alignment.center,
              child: _defaultIcon,
            ),
            title: Text('Americanas.com'),
            subtitle: Text('contato@nicollasfeitosa.com'),
            onTap: _defaultDialog,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _createNewPassword,
        tooltip: 'Add a password or note',
        child: Icon(Icons.add),
      ),
    );
  }
}
