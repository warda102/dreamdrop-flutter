import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import '../compte.dart';
import 'home.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePAge(),
    ));

class MyHomePAge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 154, 202, 241),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeInUp(
                            duration: Duration(milliseconds: 1600),
                            child: Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeInUp(
                          duration: Duration(milliseconds: 1800),
                          child: Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: Color.fromRGBO(4, 125, 196, 1)),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(4, 125, 196, 1),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromRGBO(
                                                  4, 125, 196, 1)))),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Email ",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      ListTile(
                        title: const Text(
                          'Connexion',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Color.fromRGBO(247, 249, 250, 1)),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => HomePage(),
                            ),
                          );
                        },
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      ListTile(
                        title: const Text(
                          'Créer un compte',
                          textAlign: TextAlign.center,
                          style:
                              TextStyle(color: Color.fromRGBO(4, 125, 196, 1)),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => Compte(),
                            ),
                          );
                        },
                      ),
                      FadeInUp(
                          duration: Duration(milliseconds: 2000),
                          child: Text(
                            "mot de passe oublier ?",
                            style: TextStyle(
                                color: Color.fromRGBO(4, 125, 196, 1)),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
