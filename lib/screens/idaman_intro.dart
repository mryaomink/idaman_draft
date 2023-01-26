import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/idaman_home.dart';

class IdamanIntro extends StatefulWidget {
  const IdamanIntro({super.key});

  @override
  State<IdamanIntro> createState() => _IdamanIntroState();
}

class _IdamanIntroState extends State<IdamanIntro> {
  bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              clipBehavior: Clip.none,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/imgsp.jpg'),
                    fit: BoxFit.contain),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 40,
                    height: 40,
                    child: Image.asset(
                      'assets/images/logoidaman.png',
                    ),
                  ),
                  const Text(
                    '''Lorem Ipsum is simply dummy text of the printing and typesetting industry.\nLorem Ipsum has been the industry's standard,''',
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    '''when an unknown printer took a galley of type and scrambled it to make a type specimen book.''',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  ),
                  CheckboxListTile(
                    value: _isChecked,
                    onChanged: (value) => setState(
                      () {
                        _isChecked = value!;
                      },
                    ),
                    title: const Text(
                      'Lorem Ipsum is simply',
                      style: TextStyle(fontSize: 12.0, color: Colors.grey),
                    ),
                    controlAffinity: ListTileControlAffinity.leading,
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 40.0,
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(colors: [
                        Color(0xff55C2A2),
                        Color(0xff1A639F),
                        Color(0xff195D99)
                      ])),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const IdamanHome(),
                              ));
                        },
                        child: const Text('Get Started'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
