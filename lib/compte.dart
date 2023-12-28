import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Compte(),
    ));

class Compte extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 154, 202, 241),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: FadeInUp(
                            duration: Duration(milliseconds: 1600),
                            child: Container(
                              margin: EdgeInsets.only(top: 20),
                              child: Center(
                                child: Text(
                                  "Inscription",
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
                  padding: EdgeInsets.all(20.0),
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
                                        hintText: "Nom Complet",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
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
                                        hintText: "Messagerie électronique",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
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
                                        hintText: "Confirmer l’adresse e-mail",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
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
                                        hintText: "N° de téléphone",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Color.fromRGBO(
                                                  4, 125, 196, 1)))),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Mot de passe",
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
                                        hintText: " Confirmer Mot de passe",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeInUp(
                          duration: Duration(milliseconds: 1900),
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(4, 125, 196, 1),
                                  Color.fromRGBO(4, 125, 196, 1),
                                ])),
                            child: Center(
                              child: Text(
                                "Connexion ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
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
