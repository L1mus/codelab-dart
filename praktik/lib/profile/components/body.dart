import 'package:flutter/material.dart';
import 'info.dart';
import 'profilemenu.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Info(
            image: "assets/images/lion.png",
            name: "Ali Msuatdji",
            email: "ali.065118277@unpak.ac.id",
          ),
          SizedBox(height: 20),
          ProfileMenuItem(
            iconSrc: "assets/icons/bookmark_fill.svg",
            title: "Mata Pelajaran",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/language.svg",
            title: "Bahasa",
            press: () {},
          ),
          ProfileMenuItem(
            iconSrc: "assets/icons/info.svg",
            title: "Hubungi",
            press: () {},
          ),
        ],
      ),
    );
  }
}
