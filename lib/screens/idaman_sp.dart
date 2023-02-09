import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/idaman_login.dart';

class IdamanSp extends StatefulWidget {
  const IdamanSp({Key? key}) : super(key: key);

  @override
  State<IdamanSp> createState() => _IdamanSpState();
}

class _IdamanSpState extends State<IdamanSp> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IdamanLogin(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              'assets/images/logoida.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
