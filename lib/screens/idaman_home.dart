import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/all_menu.dart';
import 'package:idaman_diskominfo/screens/idaman_intro.dart';
import 'package:idaman_diskominfo/widgets/yao_drawer.dart';

import '../widgets/idaman_menu.dart';
import '../widgets/idaman_slider.dart';
import '../widgets/layanan_idaman.dart';

class IdamanHome extends StatefulWidget {
  const IdamanHome({Key? key}) : super(key: key);

  @override
  State<IdamanHome> createState() => _IdamanHomeState();
}

class _IdamanHomeState extends State<IdamanHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

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
      key: _scaffoldKey,
      drawer: const YaoDrawer(),
      backgroundColor: const Color.fromARGB(255, 240, 242, 244),
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
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
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
                const SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: InkWell(
                    splashColor: Colors.amber,
                    radius: 30.0,
                    onTap: () async {
                      await Future.delayed(const Duration(seconds: 1)).then(
                        (value) => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AllMenu(),
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'All Menu =>',
                      style: TextStyle(
                        fontSize: 18.0,
                        color: Colors.blueAccent,
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
