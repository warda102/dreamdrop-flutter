import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';
import 'dart:math';
import 'projet.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({this.title = 'Dream Drop'});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  var imagesVisible = true;
  var cardContent = [];
  @override
  void initState() {
    var ran = Random();
    for (var i = 0; i < 5; i++) {
      var heading = 'Projet spécial qui faire avec amour';
      var subheading = 'produit spécial';
      var cardImage = NetworkImage(
          'https://source.unsplash.com/random/800x600?bijoux&' +
              ran.nextInt(300).toString());
      var supportingText = 'Budget 20.000 dt ';
      var cardData = {
        'heading': heading,
        'subheading': subheading,
        'cardImage': cardImage,
        'supportingText': supportingText,
      };
      cardContent.add(cardData);
    }
    super.initState();
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Color.fromARGB(115, 90, 197, 247),
      title: Text(widget.title),
      actions: [
        IconButton(
          icon: Icon(Icons.logout_rounded),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _buildAppBar(),
        body: _buildBody(),
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
          child: Column(
            children:
                cardContent.map((cardData) => _buildCard(cardData)).toList(),
          )),
    );
  }

  Card _buildCard(Map<String, dynamic> cardData) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
            title: Text(cardData['heading']!),
            subtitle: Text(cardData['subheading']!),
            trailing: const Icon(Icons.favorite_outline),
          ),
          Visibility(
            visible: imagesVisible,
            child: Container(
              height: 200.0,
              child: Ink.image(
                image: cardData['cardImage']!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            alignment: Alignment.centerLeft,
            child: Text(cardData['supportingText']!),
          ),
          ButtonBar(
            children: [
              GestureDetector(
                onTap: () {
                  _afficherDialogue(context);
                },
                child: const Text('Financer'),
              ),
              TextButton(
                child: const Text('Afficher Tous'),
                onPressed: () {
                  // Gérer l'action lorsque le bouton est pressé
                },
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _afficherDialogue(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'pour plus d’informations',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromRGBO(49, 163, 238, 1)),
          ),
          content: Text(
            'Email: exemple@cc.com ',
            textAlign: TextAlign.center,
            style: TextStyle(color: Color.fromRGBO(0, 10, 17, 1)),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('D’accord'),
            ),
          ],
        );
      },
    );
  }
}
