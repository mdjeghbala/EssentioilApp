import 'package:ess/detailsproduit.dart';
import 'package:flutter/material.dart';
import 'accueil.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  //Creation du menu d'accueil
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Chargement(),
    );
  }
}

// Page de chargement de l'application
class Chargement extends StatelessWidget {
  const Chargement({

    super.key,
  });

  @override
  Widget build(BuildContext context) {
      Future.delayed(Duration(milliseconds: 1800), () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => Accueil()),
        );
      });
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
        title: const Text("Essentioil")
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text("Bienvenue sur l'application Essentioil",
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 22,
              fontFamily: 'NiceSugar',
            ),
            ),
            Image(image: AssetImage('assets/images/LogoEssentioil.png'),
            )
        ]
        )
      )
    );
  }
}


