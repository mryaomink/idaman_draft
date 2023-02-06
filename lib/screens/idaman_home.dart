import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/all_menu.dart';
import 'package:idaman_diskominfo/screens/badapat_page.dart';
import 'package:idaman_diskominfo/screens/idaman_cctv.dart';
import 'package:idaman_diskominfo/screens/idaman_intro.dart';
import 'package:idaman_diskominfo/screens/info_pangan.dart';
import 'package:idaman_diskominfo/screens/intan_bjb.dart';
import 'package:idaman_diskominfo/screens/jdih_page.dart';
import 'package:idaman_diskominfo/screens/ppid_page.dart';
import 'package:shimmer/shimmer.dart';

class IdamanHome extends StatefulWidget {
  const IdamanHome({Key? key}) : super(key: key);

  @override
  State<IdamanHome> createState() => _IdamanHomeState();
}

class _IdamanHomeState extends State<IdamanHome> {
  List<String> imgImage = [
    'assets/images/banner/datapertumbuhan.jpg',
    'assets/images/banner/petasebaran.jpg',
    'assets/images/banner/penaganan.jpg',
    'assets/images/banner/updateberita.jpg',
  ];

  List<String> myMenuImg = [
    "assets/images/banner/datapertumbuhan.jpg",
    "assets/images/banner/petasebaran.jpg",
    "assets/images/banner/penaganan.jpg",
    "assets/images/banner/updateberita.jpg",
  ];
  List<String> titleMyimg = [
    "Data Pertumbuhan",
    "Peta Sebaran",
    "Penanganan",
    "Update Berita",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 240, 242, 244),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/logoidaman.png',
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.menu),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 270,
                  child: SliderBanner(),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: 340.0,
                    child: IdamanMenu(),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AllMenu(),
                        ),
                      );
                    },
                    child: const Text(
                      'All Menu =>',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Lorem Ipsum',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Deskripsi ',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 400,
                  child: GridView.count(
                    primary: false,
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16,
                    padding: const EdgeInsets.all(18),
                    children: List.generate(
                      myMenuImg.length,
                      (index) {
                        return GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const IdamanIntro(),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 130,
                                  child: Image.asset(
                                    myMenuImg[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  titleMyimg[index],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Lorem Ipsum',
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Deskripsi ',
                              style: TextStyle(
                                fontSize: 13.0,
                                color: Colors.blue,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          'Lorem Ipsum',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                LayananIdaman(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IdamanMenu extends StatefulWidget {
  const IdamanMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<IdamanMenu> createState() => _IdamanMenuState();
}

class _IdamanMenuState extends State<IdamanMenu> {
  bool memuatData = false;
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      setState(() {
        memuatData = true;
      });
    });
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
                  baseColor: const Color.fromARGB(255, 84, 84, 81),
                  highlightColor: Colors.grey.shade200,
                  child: Container(
                    height: 20,
                    width: 20,
                    color: Colors.grey[200],
                  ));
            })
        : GridView.count(
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            crossAxisCount: 3,
            mainAxisSpacing: 24,
            crossAxisSpacing: 24,
            children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BadapatPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/images/iconmenu/badapat.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IdamanCttv(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/images/iconmenu/cctv.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JdihPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/images/iconmenu/umkm.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                  height: 20,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BadapatPage(),
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/images/iconmenu/tandai.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const InfoPangan(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/images/iconmenu/pangan.png',
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const IntanBjb(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/images/iconmenu/relatik.png',
                      fit: BoxFit.fitHeight,
                      width: 20,
                      height: 20,
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PpidPage(),
                      ),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: Image.asset(
                      'assets/images/iconmenu/relawanb.png',
                      fit: BoxFit.fitHeight,
                    ),
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
                    width: 20,
                    height: 20,
                  ),
                ),
              ]);
  }
}

class SliderBanner extends StatefulWidget {
  const SliderBanner({
    Key? key,
  }) : super(key: key);

  @override
  State<SliderBanner> createState() => _SliderBannerState();
}

class _SliderBannerState extends State<SliderBanner> {
  int _currentIndex = 0;
  final List<String> imgImage = [
    'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1457305237443-44c3d5a30b89?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=874&q=80',
    'https://images.unsplash.com/photo-1457433575995-8407028a9970?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    'https://images.unsplash.com/photo-1499750310107-5fef28a66643?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CarouselSlider(
          items: imgImage
              .map(
                (e) => SizedBox(
                  child: Image.network(
                    e,
                    fit: BoxFit.cover,
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              viewportFraction: 1.0,
              aspectRatio: 1.5,
              onPageChanged: ((index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              })),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: DotsIndicator(
            dotsCount: imgImage.length,
            position: _currentIndex.toDouble(),
            decorator: const DotsDecorator(
              color: Color(0xffA2A2A2),
              activeColor: Color(0xffFCC431),
              spacing: EdgeInsets.symmetric(
                horizontal: 3.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

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
      // child: Row(
      //   children: [
      //     Column(
      //       children: [
      //         Image.asset(
      //           'assets/images/banner/intanbjb.jpg',
      //           fit: BoxFit.cover,
      //         ),
      //         const Text(
      //           'Intan BJB',
      //           style: TextStyle(
      //             fontSize: 16.0,
      //             color: Color(0xffFEC021),
      //           ),
      //         ),
      //       ],
      //     ),
      //     Column(
      //       children: [
      //         Image.asset(
      //           'assets/images/banner/lapor.jpg',
      //           fit: BoxFit.cover,
      //         ),
      //         const Text(
      //           'LAPOR',
      //           style: TextStyle(
      //             fontSize: 16.0,
      //             color: Color(0xffFEC021),
      //           ),
      //         ),
      //       ],
      //     )
      //   ],
      // ),

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
