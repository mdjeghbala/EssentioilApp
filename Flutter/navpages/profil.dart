import 'package:ess/connexion.dart';
import 'package:ess/inscription.dart';
import 'package:flutter/material.dart';

class Profil extends StatelessWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/LogoEssentioilmini.png', fit: BoxFit.cover),
          backgroundColor: Colors.orangeAccent,
        ),
      body: Scrollbar(
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset('assets/images/detox.png',
                  width: 8,
                ),
              ),
              const Padding(padding: EdgeInsets.only(top: 15.0)),
              ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Connexion(),
                  ),
                );
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orangeAccent,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // padding du bouton
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16), // bord arrondis du bouton
                  ),
                ),
                child: Text('Connexion'),
              ),
              const Padding(padding: EdgeInsets.only(top: 25.0)),
                Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.orangeAccent.shade100,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Vous n'avez toujours pas de compte ?",
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Inscription(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange.shade300,
                        shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                        )
                      ),
                      child: const Text('Je crée un compte',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      ),
                    ),
            ],
          ),
                )
                ]
        )
          ),
        );
      }
    }
