import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'inscription.dart';

class Inscription extends StatefulWidget{
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {

  TextEditingController email = TextEditingController();
  TextEditingController mdp = TextEditingController();
  TextEditingController nom = TextEditingController();
  TextEditingController prenom = TextEditingController();
  TextEditingController adresse = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  Inscription() {

    var formData = formstate.currentState;
    print("non connecté");
    if(formData!.validate()){
      print("Connecté");
    }

  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.orange.shade50,
        body: Center(
          child: SingleChildScrollView(
          child: Form(
            key: formstate,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Bienvenue dans la page d'inscription",
                  style: TextStyle(
                    fontFamily: 'NiceSugar',
                    fontSize: 18,
                    backgroundColor: Colors.redAccent.shade100,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  controller: nom,
                  validator: (val){
                    if(val!.isEmpty){
                      return"Veuillez saisir un nom";
                    }
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Nom',
                    prefixIcon: Icon(Icons.person_pin),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:10.0)),
                TextFormField(
                  controller:prenom,
                  validator: (val){
                    if(val!.isEmpty){
                      return"Veuillez saisir un prénom";
                    }
                  },
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                    hintText: 'Prénom',
                    prefixIcon: Icon(Icons.person_pin_outlined),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:10.0)),
                TextFormField(
                  controller:adresse,
                  validator: (val){
                    if(val!.isEmpty){
                      return"Veuillez saisir une adresse";
                    }
                  },
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    hintText: 'Adresse complète',
                    prefixIcon: Icon(Icons.place),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top:10.0)),
                    TextFormField(
                      controller: email,
                      validator: (val){
                        if(val!.isEmpty){
                          return"Veuillez saisir une adresse email";
                        }
                      },
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Adresse email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Padding(padding: EdgeInsets.only(top:10.0)),
                    TextFormField(
                      controller: mdp,
                      validator: (val){
                        if(val!.isEmpty){
                          return"Veuillez saisir un mot de passe";
                        }
                      },
                      obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Mot de passe',
                    prefixIcon: Icon(Icons.key),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: () {
                    Inscription();
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent.shade100,
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text("S'inscrire",
                    style: TextStyle(
                        color: Colors.black
                    ),
                  ),
                ),
            ]
          ),
          ),
            ),
        )
        );
  }
}
