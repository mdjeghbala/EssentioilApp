import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../detailsproduit.dart';

class VotreCorps extends StatefulWidget{
  @override
  _VotreCorpsState createState() => _VotreCorpsState();
}

class _VotreCorpsState extends State<VotreCorps> {

  List list = [];

  Future ReadData() async{

    var url = "http://192.168.1.100/essentioil/votrecorps.php";
    var res = await http.get(Uri.parse(url));

    if(res.statusCode == 200) {
      var red = jsonDecode(res.body);

      setState(() {
        list.addAll(red);
      });
    }

  }

  getData()async{
    await ReadData();
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
              'assets/images/LogoEssentioilmini.png', fit: BoxFit.cover),
          backgroundColor: Colors.deepPurpleAccent.shade100,
        ),
        body: Column(
            children: [
              Padding(padding: EdgeInsets.only(top:30.0)),
              Text('Votre Corps',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NiceSugar',
                  fontSize: 20,
                  backgroundColor: Colors.deepPurpleAccent.shade100,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20.0)),
              Expanded(
                  child: list.isEmpty
                      ? // Ajouter une condition pour vérifier si la liste est vide
                  Center(
                    child: CircularProgressIndicator(),
                  )
                      :
                  ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (ctx, i) {
                        return ListTile(
                          leading: Image.network(list[i]['imageurl']),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ProductDetailPage(
                                      productId: int.parse(
                                          list[i]['idproduit']),
                                      libelle: list[i]['libelle'],
                                      prix: double.parse(list[i]['prix']),
                                      imageurl: list[i]['imageurl'],
                                    ),
                              ),
                            );
                          },
                          title: Text(list[i]['libelle']),
                        );
                      }
                  )
              )
            ]
        )
    );
  }
}