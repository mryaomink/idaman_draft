import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../main.dart';

class AllMenu extends StatefulWidget {
  const AllMenu({super.key});

  @override
  State<AllMenu> createState() => _AllMenuState();
}

class _AllMenuState extends State<AllMenu> {
  bool memuatData = false;
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
  Widget build(BuildContext context) {
    final List<String> imgIcon = [
      "assets/images/iconmenu/sipena.png",
      "assets/images/iconmenu/pasarbjb.png",
      "assets/images/iconmenu/bakawan.png",
      "assets/images/iconmenu/alam.png",
      "assets/images/iconmenu/jdih.png",
      "assets/images/iconmenu/ppid.png",
      "assets/images/iconmenu/penerbangan.png"
    ];

    final List<String> judul = [
      "SiPena",
      "Pasar BJB",
      "Bakawan",
      "Alam",
      "JDIH",
      "PPID",
      "Penerbangan"
    ];

    final List<String> desk = ["Tes", "Tes", "Tes", "Tes", "Tes", "Tes", "Tes"];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Layanan Informasi',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.backspace,
              color: Colors.black,
            )),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: imgIcon.length,
              itemBuilder: (context, index) {
                return memuatData == false
                    ? Shimmer.fromColors(
                        baseColor: const Color.fromARGB(255, 112, 109, 109),
                        highlightColor:
                            const Color.fromARGB(255, 161, 158, 158),
                        child: Container(
                          height: 80,
                          width: 80,
                          margin: const EdgeInsets.all(16.0),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.4),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ))
                    : _buildMenuList(context, imgIcon, index, judul, desk);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMenuList(BuildContext context, List<String> imgIcon, int index,
      List<String> judul, List<String> desk) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 110.0,
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 80.0,
            height: 80.0,
            decoration: BoxDecoration(
              color: const Color(0xffD9D9D9),
              image: DecorationImage(
                image: AssetImage(imgIcon[index]),
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                judul[index],
                style: TextStyle(
                  fontSize: 22.0,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.blue
                      : Colors.yellow,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                desk[index],
                style: TextStyle(
                  fontSize: 14.0,
                  color: MyApp.themeNotifier.value == ThemeMode.light
                      ? Colors.black
                      : Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                maxLines: 2,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
