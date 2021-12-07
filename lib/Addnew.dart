import 'package:flutter/material.dart';

class Addnew extends StatefulWidget {
  const Addnew({Key? key}) : super(key: key);

  @override
  _AddnewState createState() => _AddnewState();
}

class _AddnewState extends State<Addnew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // add button in appbar
        appBar: AppBar(
          title: Text('Adicionar uma Nova Senha'),
        ),
        body: Container(
          padding: EdgeInsets.all(32),
          child: Column(
            children: <Widget>[
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Nome do Site',
                ),
              ),
              TextField(
                keyboardType: TextInputType.url,
                decoration: InputDecoration(
                  labelText: 'URL',
                ),
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Login/Email',
                ),
              ),
              TextField(
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: 'Senha',
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                child: Text(
                  'Salvar',
                  style: TextStyle(fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.blue),
              ),
            ],
          ),
        ));
  }
}
