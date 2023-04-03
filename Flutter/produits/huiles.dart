import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

import '../detailsproduit.dart';

class Huiles extends StatefulWidget{
  @override
  _HuilesState createState() => _HuilesState();
}

class _HuilesState extends State<Huiles> {

  List list = [];

  Future ReadData() async{

    var url = "http://192.168.1.100/essentioil/huiles.php";
    var res = await http.get(Uri.parse(url));

    if(res.statusCode == 200) {
      var red = jsonDecode(res.body);

      setState(() {
        list.addAll(red);
      });
    }

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getData();
  }

  getData()async{
    await ReadData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Image.asset(
              'assets/images/LogoEssentioilmini.png', fit: BoxFit.cover),
          backgroundColor: Colors.orangeAccent.shade100,
        ),
        body: Column(
            children: [
              Padding(padding: EdgeInsets.only(top:30.0)),
              Text('Nos Huiles Vegetales Bio',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'NiceSugar',
                  fontSize: 20,
                  backgroundColor: Colors.orange.shade100,
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