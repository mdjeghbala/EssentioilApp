import 'package:ess/produits/accessoires.dart';
import 'package:ess/produits/argiles.dart';
import 'package:ess/produits/huiles.dart';
import 'package:ess/produits/hydrolats.dart';
import 'package:ess/produits/poudres.dart';
import 'package:flutter/material.dart';

//page menu
class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.teal.shade100,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 15.0)),
          Text('Choisissez la categorie de produit qui vous intéresse !',
          textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Helvetica',
              fontWeight: FontWeight.bold,
              backgroundColor: Colors.teal.shade100,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Nos poudres',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                'Nos huiles',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Poudres()
                    ),
                  );
                },
                  child: Container(
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.black,
                  width: 2,
                  )
                  ),
                child: Image.asset(
                  'assets/images/poudre.jpg',
                  height: 200,
                  width: 200,
                ),
                  )
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Huiles()
                    ),
                  );
                },
                  child: Container(
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.black,
                  width: 2,
                  )
                  ),
                child: Image.asset(
                  'assets/images/huile.png',
                  height: 200,
                  width: 200,
                ),
              ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Nos argiles',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                'Nos hydrolats',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Argiles()
                    ),
                  );
                },
                  child: Container(
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.black,
                  width: 2,
                  )
                  ),
                child: Image.asset(
                  'assets/images/argile.jpg',
                  height: 200,
                  width: 200,
                ),
                  )
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Hydrolats()
                    ),
                  );
                },
                  child: Container(
                  decoration: BoxDecoration(
                  border: Border.all(
                  color: Colors.black,
                  width: 2,
                  )
                  ),
                child: Image.asset(
                  'assets/images/hydrolat.jpg',
                  height: 200,
                  width: 200,
                ),
              ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Nos accessoires',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              Text(
                'Nos coffrets',
                style: TextStyle(
                  fontFamily: 'Helvetica',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Accessoires()
                    ),
                  );
                },
                child: Container(
                decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                      width: 2,
                )
                ),
                child: Image.asset(
                  'assets/images/accessoire.jpg',
                  height: 200,
                  width: 200,
                ),
                )
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Hydrolats()
                    ),
                  );
                },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                    ),
                child: Image.asset(
                  'assets/images/coffret.jpg',
                  height: 200,
                  width: 200,
                ),
                  )
              ),
            ],
          ),
        ],
      ),
    );
  }
}