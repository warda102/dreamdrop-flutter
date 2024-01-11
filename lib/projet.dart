import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'dart:math';
import 'home.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyProjet(),
    ));

class MyProjet extends StatefulWidget {
  final String title;
  const MyProjet({this.title = 'Dream Drop'});

  @override
  _MyProjetState createState() => _MyProjetState();
}

class _MyProjetState extends State<MyProjet> {
  var imagesVisible = true;
  var cardContent = [];
  Widget builBody() {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 241, 244, 247),
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
                                  "Nouveau Projet",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 22, 158, 248),
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
                                        hintText: "Nom du projet",
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
                                        hintText: "Description",
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
                                        hintText: "Date du Creation",
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
                                        hintText: "Catégorie du projet",
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
                                        hintText: "Budjet",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[700])),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: " Périorité",
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

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(115, 90, 197, 247),
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: Icon(Icons.logout_rounded),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: builBody(),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
                accountEmail: Text('Adresse mail'),
                accountName: Text(
                  'User',
                  style: TextStyle(fontSize: 24.0),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(115, 90, 197, 247),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.grading),
                title: const Text(
                  'Finance',
                  style: TextStyle(fontSize: 18.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(
                        title: 'Finance',
                      ),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.lightbulb),
                title: const Text(
                  'Ajout un projet',
                  style: TextStyle(fontSize: 18.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => MyProjet(),
                    ),
                  );
                },
              ),
              ListTile(
                leading: const Icon(Icons.list),
                title: const Text(
                  'Liste Des Projets',
                  style: TextStyle(fontSize: 18.0),
                ),
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) => const HomePage(
                        title: 'Liste Des Projets',
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ));
  }

  Container _buildBody() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
