import 'package:flutter/material.dart';

class IdamanUmkm extends StatelessWidget {
  const IdamanUmkm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'UMKM',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.backspace,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/tusaha.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        'Tambah Usaha',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/usahasaya.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        'List Usaha',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/pelatihan.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        'Pelatihan',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.6),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 50.0,
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/bantu.png'),
                            fit: BoxFit.cover),
                      ),
                      child: Text(
                        'Bantuan',
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                          backgroundColor: Colors.black.withOpacity(0.7),
                        ),
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
  }
}
