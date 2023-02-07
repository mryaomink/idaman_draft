import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/idaman_home.dart';
import 'package:idaman_diskominfo/screens/idaman_reg.dart';

class IdamanLogin extends StatefulWidget {
  const IdamanLogin({super.key});

  @override
  State<IdamanLogin> createState() => _IdamanLoginState();
}

class _IdamanLoginState extends State<IdamanLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logoidaman.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'NIK',
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Password',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50.0,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const IdamanHome()));
                    },
                    child: const Text('Login'),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 50.0,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IdamanReg(),
                        ),
                      );
                    },
                    child: const Text('Register'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
