
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final int productId;
  final String libelle;
  final String imageurl;
  final double prix;

  ProductDetailPage
      ({
          required this.productId,
          required this.libelle,
          required this.imageurl,
          required this.prix,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple.shade50,
          title: const Text('Détails du produit',
          style: TextStyle(
            color: Colors.black
          ),
          ),
        ),
        body: Column(
          children: [
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Image.network('$imageurl'),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Text('$libelle'),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            Text('${prix.toStringAsFixed(2)} €'),
            const Padding(padding: EdgeInsets.only(top: 20.0)),
            ElevatedButton
              (
                onPressed: () {
                // Ajouter le produit au panier
                // par exemple :
                print('Le produit $libelle a été ajouté au panier');
                },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade50
              ),
                child: const Text('Ajouter au panier',
                style: TextStyle(
                  color: Colors.black
                ),
                ),
              ),
          ],
    ),
    );

  }
}