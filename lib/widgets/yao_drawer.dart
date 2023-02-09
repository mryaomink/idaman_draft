import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/screens/idaman_login.dart';

class YaoDrawer extends StatefulWidget {
  const YaoDrawer({super.key});

  @override
  State<YaoDrawer> createState() => _YaoDrawerState();
}

class _YaoDrawerState extends State<YaoDrawer>
    with SingleTickerProviderStateMixin {
  static const Duration togleDuration = Duration(milliseconds: 250);
  AnimationController? _animationController;
  final List<String> dataKu = ["tes", "tes2", "tes3", "tes4"];
  final List<String> buzzData = ["tes", "tes2", "tes3"];
  late int _notifCount;
  late int _buzzCount;
  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: togleDuration);
    _notifCount = dataKu.length;
    _buzzCount = buzzData.length;
  }

  @override
  void dispose() {
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 180.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/logoidaman.png',
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.chat,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Badge.count(count: _notifCount),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.warning,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Buzz',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Badge.count(count: _buzzCount),
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Setting',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const IdamanLogin(),
                        ),
                      );
                    },
                    leading: const Icon(
                      Icons.exit_to_app,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Divider(
                    thickness: 2,
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Tentang',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
