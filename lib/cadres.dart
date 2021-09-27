import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Cadre extends StatelessWidget {
  const Cadre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Boutton(url: "", name: "Feever"),
            SizedBox(
              height: 5,
            ),
            Boutton(url: "https://5euros.com/profil/f38studio", name: "5euros"),
            SizedBox(
              height: 5,
            ),
            Boutton(url: "", name: "Upwork"),
          ],
        ),
      ],
    );
  }
}

///
///////////////////////////////////////
class Boutton extends StatelessWidget {
  Boutton({required this.url, required this.name});
  String name;
  String url;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Lancement.OpenLinkUrl(uRl: url);
        },
        child: Text(
          name,
          style: TextStyle(color: Colors.black),
        ),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) return Colors.blue;
              return Colors.white;
            },
          ),
        ),
      ),
    );
  }
}

///
class Lancement {
  static Future OpenLinkUrl({required String uRl}) {
    return _launcher(uRl: uRl);
  }

  static Future _launcher({required String uRl}) async {
    if (await canLaunch(uRl)) {
      await launch(uRl);
    }
  }
}
