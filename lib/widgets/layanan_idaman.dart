import 'package:flutter/material.dart';

class LayananIdaman extends StatelessWidget {
  LayananIdaman({Key? key}) : super(key: key);

  final List<String> imgLayanan = [
    "assets/images/banner/intanbjb.jpg",
    "assets/images/banner/lapor.jpg",
    "assets/images/banner/jdih.jpg",
    "assets/images/banner/dukcapil.jpg",
  ];

  final List<String> jdlLayanan = [
    "Intan BJB",
    "LAPOR",
    "JDIH",
    "Dukcapil",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 320.0,
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      child: GridView.builder(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: imgLayanan.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 16,
        ),
        itemBuilder: (context, index) => Column(
          children: [
            SizedBox(
              height: 130,
              child: Image.asset(
                imgLayanan[index],
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              jdlLayanan[index],
              style: const TextStyle(
                fontSize: 14.0,
                color: Color(0xffFEC021),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
