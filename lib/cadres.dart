import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Cadre1 extends StatelessWidget {
  const Cadre1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Boutton(
                url: "https://www.facebook.com/StudioF38", name: "Facebook"),
            Boutton(url: "https://twitter.com/F38Studio", name: "Twitter"),
          ],
        ),
        Column(
          children: [
            Boutton(
                url: "https://www.instagram.com/f38studio/", name: "Instagram"),
            Boutton(
                url: "https://www.youtube.com/channel/UCTYmEiC7jErdD1ZQQK5nB_g",
                name: "YouTube"),
          ],
        ),
      ],
    );
  }
}

//////////////////////////////////////////
class Cadre2 extends StatelessWidget {
  const Cadre2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=1ssE5mBjC9f1CUdp8UMQ-cq1uHwMmgOwy",
                name: "Nos Pubs"),
          ],
        ),
        Column(
          children: [
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=18IWR1ro_RavYXZiKoTXRnAb1QMq6qhFK",
                name: "Autres"),
          ],
        ),
      ],
    );
  }
}

/////////////////////////////////////////////////////////////////
class Cadre3 extends StatelessWidget {
  const Cadre3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=11kjxeWHZE1Fs5UIx019i4u_JgFI-vDkP",
                name: "E_Illustration"),
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=11rLybWEkz_NXQMiUchob1mSnluO3EqRq",
                name: "E_Vidéo"),
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=11n10sgxe0UdzsuLyL_d60w7oF3H8PNcs",
                name: "E_Cinéma"),
          ],
        ),
        Column(
          children: [
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=11rgVIxYeREp3hrtBmHZ9DuUPITBwcF__",
                name: "E_Développeurs"),
            Boutton(
                url:
                    "https://drive.google.com/folderview?id=119USVbGQfbL3tf5QZoNLiqcU4qOesf_z",
                name: "E_MDigital"),
          ],
        ),
      ],
    );
  }
}

///
///
///
///
///
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
