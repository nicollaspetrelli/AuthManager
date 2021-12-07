import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    // login page
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
              'Login',
              style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              textAlign: TextAlign.center,
              keyboardType: TextInputType.emailAddress,
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
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, "/home");
              },
              child: Text(
                'Entrar',
                style: TextStyle(fontSize: 18),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.blue),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, "/createAccount");
                  },
                  child: Text(
                    "Criar uma conta",
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
