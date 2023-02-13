import 'package:flutter/material.dart';
import 'package:idaman_diskominfo/main.dart';
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
            // Container(
            //   height: 180.0,
            //   decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage(
            //           'assets/images/logoidaman.png',
            //         ),
            //         fit: BoxFit.cover),
            //   ),
            // ),
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.yellow.withOpacity(0.2),
                  image: const DecorationImage(
                      image: AssetImage('assets/images/logoidaman.png'),
                      fit: BoxFit.cover)),
              accountName: const Text(
                'Reski Juniadi Iswar',
                style: TextStyle(color: Colors.black),
              ),
              accountEmail: const Text('yao.freelance@gmail.com',
                  style: TextStyle(color: Colors.black)),
              currentAccountPicture: const CircleAvatar(
                backgroundColor: Colors.black,
                child: Icon(
                  Icons.supervised_user_circle_rounded,
                ),
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
                    title: Text(
                      'Chat',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.blue
                            : Colors.amber,
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
                    title: Text(
                      'Buzz',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.blue
                            : Colors.amber,
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
                    title: Text(
                      'Setting',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.blue
                            : Colors.amber,
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
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.blue
                            : Colors.amber,
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
                    title: Text(
                      'Tentang',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.blue
                            : Colors.amber,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  ListTile(
                    onTap: () {
                      MyApp.themeNotifier.value =
                          MyApp.themeNotifier.value == ThemeMode.light
                              ? ThemeMode.dark
                              : ThemeMode.light;
                    },
                    leading: Icon(MyApp.themeNotifier.value == ThemeMode.light
                        ? Icons.dark_mode
                        : Icons.light_mode),
                    title: Text(
                      'Dark Light Mode',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: MyApp.themeNotifier.value == ThemeMode.light
                            ? Colors.blue
                            : Colors.amber,
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
