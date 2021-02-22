import 'package:clone_disney/ui_constants.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _backgroundImage(),
          _backgroundGradient(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.all(15),
                  child: Image.network(
                      "https://lumiere-a.akamaihd.net/v1/images/b_disneyplus_header_mobile_18281_cf9000ab.png")),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Tus historias favoritas,\ntodas en un mismo lugar.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              SizedBox(height: 100),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: blue, borderRadius: BorderRadius.circular(9)),
                  child: Center(
                    child: Text(
                      "SUSCRIBETE AHORA",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Comienza a ver Disney+ por \$159.00/mes o\n\$1,599.00/año.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(height: 50),
              Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  height: 54,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "INICIAR SESIÓN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  )),
              SizedBox(height: 35),
            ],
          )
        ],
      ),
    );
  }
}

class _backgroundGradient extends StatelessWidget {
  const _backgroundGradient({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                    colors: [
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                  background.withOpacity(0.1),
                ])),
          ),
        )
      ],
    );
  }
}

class _backgroundImage extends StatelessWidget {
  const _backgroundImage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 3,
            child: Image.network(
                "https://cannonball-cdn.bamgrid.com/assets/originals/MLP_HERO_MBL_MEXICO.jpg",
                fit: BoxFit.cover)),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}
