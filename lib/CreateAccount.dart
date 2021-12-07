import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(top: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 150,
              height: 150,
              margin: EdgeInsets.only(bottom: 20, top: 20),
              child: Image.asset('images/logo.png'),
            ),
            Text(
              'Welcome',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Digite seu email',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
                hintText: 'Digite sua senha mestra',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Confirme sua senha novamente',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/home");
              },
              child: Text(
                'Cadastrar',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/login");
                  },
                  child: Text(
                    "Faça login",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  )),
            ),
          ],
        ),
      )),
    );
  }
}
