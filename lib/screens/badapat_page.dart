import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// buatkan saya halaman maps untuk menampilkan lokasi pengguna saat ini
class BadapatPage extends StatefulWidget {
  const BadapatPage({super.key});

  @override
  State<BadapatPage> createState() => _BadapatPageState();
}

class _BadapatPageState extends State<BadapatPage> {
  GoogleMapController? mapController;
  final LatLng _center = const LatLng(-3.446635272323403, 114.8094946607842);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Expanded(
              child: GoogleMap(
                markers: {
                  const Marker(
                    draggable: true,
                    markerId: MarkerId('BanjarBaru'),
                    position: LatLng(-3.446635272323403, 114.8094946607842),
                  ),
                  const Marker(
                    draggable: true,
                    markerId: MarkerId('Amanah Borneo Park'),
                    position: LatLng(-3.48912747649061, 114.808811751597),
                  ),
                  const Marker(
                    markerId: MarkerId('Diskominfo'),
                    position: LatLng(-3.4395993017113122, 114.83256702960138),
                  ),
                },
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 14.0,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              child: YaoIdamanMapSlide(),
            ),
          ],
        ),
      ),
    );
  }
}

class IdamanLok {
  final String name;
  final LatLng posisi;

  IdamanLok({required this.name, required this.posisi});
}

class YaoIdamanMapSlide extends StatefulWidget {
  const YaoIdamanMapSlide({
    Key? key,
  }) : super(key: key);

  @override
  State<YaoIdamanMapSlide> createState() => _YaoIdamanMapSlideState();
}

class _YaoIdamanMapSlideState extends State<YaoIdamanMapSlide> {
  int _currentList = 0;

  GoogleMapController? _mapController;

  final List<IdamanLok> idamanLok = [
    IdamanLok(
      name: "Banjarbaru",
      posisi: const LatLng(-3.446635272323403, 114.8094946607842),
    ),
    IdamanLok(
      name: "Amanah Borneo Park",
      posisi: const LatLng(-3.48912747649061, 114.808811751597),
    ),
    IdamanLok(
      name: "Diskominfo",
      posisi: const LatLng(-3.4395993017113122, 114.83256702960138),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: PageView.builder(
        onPageChanged: (index) {
          setState(() {
            _currentList = index;
            _mapController!.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                    target: idamanLok[_currentList].posisi, zoom: 13),
              ),
            );
          });
        },
        itemCount: idamanLok.length,
        itemBuilder: (context, index) {
          return SizedBox(
            // child: GoogleMap(
            //   initialCameraPosition:
            //       CameraPosition(target: idamanLok[index].posisi, zoom: 13),
            //   markers: {
            //     Marker(
            //       markerId: MarkerId(idamanLok[index].name),
            //       position: idamanLok[index].posisi,
            //       infoWindow: InfoWindow(
            //         title: idamanLok[index].name,
            //       ),
            //     ),
            //   },
            // ),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      idamanLok[index].name,
                      style: const TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      idamanLok[index].posisi.toString(),
                      style: const TextStyle(
                          fontSize: 12.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              log('Navigation di klik');
                            },
                            icon: const Icon(
                              Icons.navigation,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info,
                              size: 30,
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
