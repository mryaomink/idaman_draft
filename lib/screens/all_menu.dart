import 'package:flutter/material.dart';

class AllMenu extends StatelessWidget {
  const AllMenu({super.key});

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
                return _buildMenuList(context, imgIcon, index, judul, desk);
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
                style: const TextStyle(
                  fontSize: 22.0,
                  color: Color(0xff131212),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                desk[index],
                style: const TextStyle(
                  fontSize: 14.0,
                  color: Color.fromARGB(255, 107, 100, 100),
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
