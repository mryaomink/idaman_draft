import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shimmer/shimmer.dart';

import '../screens/all_menu.dart';
import '../screens/badapat_page.dart';
import '../screens/idaman_cctv.dart';
import '../screens/idaman_umkm.dart';
import '../screens/info_pangan.dart';
import '../screens/info_penerbangan.dart';
import '../screens/intan_bjb.dart';
import '../screens/jdih_page.dart';

class IdamanMenu extends StatefulWidget {
  const IdamanMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<IdamanMenu> createState() => _IdamanMenuState();
}

class _IdamanMenuState extends State<IdamanMenu> {
  bool memuatData = false;
  bool isPressed = false;
  double scale = 1.0;

// animasi untuk gridview menu
  void onTapDown(TapDownDetails details) {
    setState(() {
      isPressed = true;
      scale = 0.9;
    });
  }

  void onTapUp(TapUpDetails details) {
    setState(() {
      isPressed = true;
      scale = 0.8;
    });
  }

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      setState(() {
        memuatData = true;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

// list semua halaman
  List<Widget> pagesMenu = const [
    BadapatPage(),
    IdamanCttv(),
    IdamanUmkm(),
    BadapatPage(),
    InfoPangan(),
    IntanBjb(),
    JdihPage(),
    InfoPenerbangan(),
    AllMenu(),
  ];
// widget untuk menu di gridview
  List<Widget> gridMenu = [
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/badapat.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/cctv.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/umkm.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/tandai.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/pangan.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/relatik.png',
        fit: BoxFit.fitHeight,
        width: 20,
        height: 20,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/relawanb.png',
        fit: BoxFit.fitHeight,
        width: 20,
        height: 20,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/covid.png',
        fit: BoxFit.fitHeight,
      ),
    ),
    SizedBox(
      width: 20,
      height: 20,
      child: Image.asset(
        'assets/images/iconmenu/bahandap.png',
        fit: BoxFit.contain,
      ),
    ),
  ];
// fungsi untuk berpindah halaman
  Future<void> _pindahPage(BuildContext context, int index) {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => pagesMenu[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return memuatData == false
        ? GridView.builder(
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 24.0,
                crossAxisSpacing: 24.0),
            itemBuilder: (context, index) {
              return Shimmer.fromColors(
                  baseColor: const Color.fromARGB(255, 112, 109, 109),
                  highlightColor: const Color.fromARGB(255, 161, 158, 158),
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ));
            })
        : GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            children: List.generate(
              9,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    if (Platform.isAndroid) {
                      HapticFeedback.vibrate().then(
                        (value) => _pindahPage(context, index),
                      );
                    }
                  });
                },
                onTapDown: onTapDown,
                onTapUp: onTapUp,
                child: AnimatedContainer(
                  duration: const Duration(
                    milliseconds: 200,
                  ),
                  curve: Curves.easeInOut,
                  transform: Matrix4.identity()
                    ..scale(
                      scale,
                    ),
                  height: 20,
                  width: 20,
                  child: gridMenu[index],
                ),
              ),
            ),
          );
  }
}
