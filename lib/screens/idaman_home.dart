import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/idaman_intro.dart';

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
  List<Widget> menuImg = [
    Image.asset(
      'assets/images/pasarbjb.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
    Image.asset(
      'assets/images/infobapok.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
    SizedBox(
      width: 40,
      height: 40,
      child: Image.asset(
        'assets/images/sangpelayan.png',
        fit: BoxFit.cover,
      ),
    ),
    Image.asset(
      'assets/images/wifi.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
    Image.asset(
      'assets/images/cctv.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
    Image.asset(
      'assets/images/badapat.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
    Image.asset(
      'assets/images/bobot.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
    Image.asset(
      'assets/images/umkm.png',
      fit: BoxFit.cover,
      width: 40,
      height: 40,
    ),
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
                  height: 220,
                  child: SliderBanner(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: SizedBox(
                    height: 180.0,
                    child: IdamanMenu(menuImg: menuImg),
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

class IdamanMenu extends StatelessWidget {
  const IdamanMenu({
    Key? key,
    required this.menuImg,
  }) : super(key: key);

  final List<Widget> menuImg;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 16,
      children: menuImg,
    );
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
    'assets/images/banner/datapertumbuhan.jpg',
    'assets/images/banner/petasebaran.jpg',
    'assets/images/banner/penaganan.jpg',
    'assets/images/banner/updateberita.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CarouselSlider(
          items: imgImage
              .map(
                (e) => SizedBox(
                  child: Image.asset(
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
              aspectRatio: 2.0,
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
