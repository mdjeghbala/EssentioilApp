import 'package:ess/accueil.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'inscription.dart';

class Connexion extends StatefulWidget{
  const Connexion({Key? key}) : super(key: key);

  @override
  State<Connexion> createState() => _ConnexionState();
}

  class _ConnexionState extends State<Connexion> {


    Future ConnexionAuth(email,mdp) async {

      var url = "http://192.168.1.100/essentioil/connexion.php";
      var res = await http.post(Uri.parse(url),body: jsonEncode(<String , String>{
        "email":email,
        "mdp":mdp
      }),headers: {"Content-Type":"application/json"});

      if (res.statusCode == 200){

        var data = jsonDecode(res.body);

        print(data);
      }
    }

    TextEditingController email = TextEditingController();
  TextEditingController mdp = TextEditingController();

  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  Connexion() {

              var formData = formstate.currentState;
              print("non connecté");
              if(formData!.validate()){
                print("Connecté");
              }
  }

    @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/LogoEssentioilmini.png', fit: BoxFit.cover),
        backgroundColor: Colors.orange.shade100,
      ),
      body: Form(
          key: formstate,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Bienvenue dans la page de connexion',
            style: TextStyle(
              fontFamily: 'NiceSugar',
              fontSize: 18,
              backgroundColor: Colors.orange.shade100,
            ),
            ),
            Padding(padding: EdgeInsets.only(top: 140.0)),
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
          SizedBox(height: 20.0),
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
            onPressed: () async {
              var formData = formstate.currentState;
              if(formData!.validate()){
                var response = await ConnexionAuth(email.text, mdp.text);
                if (response != null && response['success'] == true) {
                  // La connexion a réussi, vous pouvez naviguer vers la page suivante
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Accueil()));
                } else {
                  // La connexion a échoué, afficher un message d'erreur
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('La connexion a échoué')));
                }
              }
            },
          style: ElevatedButton.styleFrom(
          primary: Colors.orange.shade100,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          ),
          ),
          child: Text('Se connecter',
          style: TextStyle(
            color: Colors.black
          ),
          ),
          ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Inscription()));
                    },
                child: Text("S'inscrire",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.black,
                  backgroundColor: Colors.orange.shade100,
                ),
              ),
                  ),
          ],
          )
          ],
          ),
          )
          );
        }
      }