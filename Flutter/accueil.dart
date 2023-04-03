import 'package:ess/categories/voscheveux.dart';
import 'package:ess/categories/votrecorps.dart';
import 'package:ess/categories/votrepeau.dart';
import 'package:ess/navpages/menu.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ess/navpages/profil.dart';

import 'detailsproduit.dart';

// Page d'accueil
class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav (
        gap: 8,
        tabs:  [
          GButton(
            icon: Icons.home,
            text: 'Accueil',
            textColor: Colors.black54,
          ),
          GButton(icon: Icons.person,
            text: 'Mon compte',
            textColor: Colors.black54,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Profil(),
                  ),
                );
              }
          ),
          GButton(icon: Icons.shopping_cart,
            text: 'Panier',
            textColor: Colors.black54,
          ),
          GButton(icon: Icons.menu,
            text: 'Menu',
            textColor: Colors.black54,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Menu(),
                  ),
                );
              }
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset('assets/images/LogoEssentioilmini.png', fit: BoxFit.cover),
        backgroundColor: Colors.white70,
      ),
      body: Scrollbar(
        child: ListView(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetailPage(
                      productId: 36,
                      libelle: "Aloe Vera",
                      prix: 10.90,
                      imageurl: "https://essentioil.fr/wp-content/uploads/2019/02/aloeSite.jpg",
                    ),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset('assets/images/AlaUne.png'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
              child: Text(
                'Shoppez votre routine en fonction de vos besoins',
                textAlign: TextAlign.center,
                style: TextStyle(
                  backgroundColor: Colors.orangeAccent,
                  fontSize: 12.5,
                  fontFamily: 'NiceSugar',
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Text(
                  'Vos cheveux',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Votre peau',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Votre corps',
                  style: TextStyle(
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                        builder: (context) => VosCheveux()
                                          ),
                                    );
                  },
                  child: Image.asset(
                          'assets/images/VosCheveux.png',
                          height: 120,
                          width: 137,
                        ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VotrePeau()
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/VotrePeau.png',
                    height: 120,
                    width: 137,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VotreCorps()
                      ),
                    );
                  },
                  child: Image.asset(
                    'assets/images/VotreCorps.png',
                    height: 120,
                    width: 137,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            const Text('Nos Bests-Sellers',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'NiceSugar',
                backgroundColor: Colors.orangeAccent,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 3.0)),
            const Text('Les indispensables pour nos clients',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: 'Helvetica'
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          productId: 36,
                          libelle: "Argile Verte Montmorillonite", // Remplacez par le libellé du produit que vous souhaitez afficher
                          prix: 6.90,
                          imageurl: "https://essentioil.fr/wp-content/uploads/2019/02/argile-verte.jpg",
                        ),
                      ),
                    );
                  },
                  child:
                Image.asset('assets/images/argileverte.png',
                  height: 190,
                ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          productId: 36,
                          libelle: "Aloe Vera", // Remplacez par le libellé du produit que vous souhaitez afficher
                          prix: 10.90, // Remplacez par le prix du produit que vous souhaitez afficher
                          imageurl: "https://essentioil.fr/wp-content/uploads/2019/02/aloeSite.jpg",
                        ),
                      ),
                    );
                  },
                  child:
                Image.asset('assets/images/aloevera.png',
                  height: 190,),
                )
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 15.0)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          productId: 36,
                          libelle: "Huile de Jojoba Bio", // Remplacez par le libellé du produit que vous souhaitez afficher
                          prix: 14.90,
                          imageurl: "https://essentioil.fr/wp-content/uploads/2019/02/jojobaSite.jpg",
                        ),
                      ),
                    );
                  },
                  child:
                  Image.asset('assets/images/jojoba.png',
                    height: 190,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(
                          productId: 36,
                          libelle: "Huile de Nigelle Bio",
                          prix: 13.90,
                          imageurl: "https://essentioil.fr/wp-content/uploads/2019/02/nigelleSite.jpg",
                        ),
                      ),
                    );
                  },
                  child:
                  Image.asset('assets/images/nigelle.png',
                    height: 190,),
                )
              ],
            ),
          ],
        ),
      ),
    );


  }
}