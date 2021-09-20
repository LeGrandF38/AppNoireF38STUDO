import 'package:flutter/material.dart';

class GrandTexte extends StatelessWidget {
  GrandTexte(this.texte);
  String texte;

  @override
  Widget build(BuildContext context) {
    return Text(
      texte,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

class PetitTexte extends StatelessWidget {
  PetitTexte(this.texte);
  String texte;

  @override
  Widget build(BuildContext context) {
    return Text(
      texte,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontFamily: "Roboto",
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
