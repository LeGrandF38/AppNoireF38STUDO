import 'package:flutter/material.dart';
import 'texts.dart';

class top extends StatelessWidget {
  const top({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 20),
        Image(
          image: AssetImage("assets/F38STUDIOLogo-min.png"),
          height: 60,
          width: 60,
        ),
        SizedBox(height: 2),
        GrandTexte("Hafsa"),
        PetitTexte("f38studiodirection@gmail.com"),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
