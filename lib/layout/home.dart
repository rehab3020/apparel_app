import 'package:flutter/material.dart';
import 'package:market_apparel/database.dart';
import 'package:market_apparel/modules/favourites_screen.dart';
import 'package:market_apparel/modules/login/login.dart';

import '../modules/cart_screen.dart';
import '../modules/home_screen.dart';
import '../shares/components/components.dart';

class Home extends StatefulWidget {
  final int index;
  final String? name;
  final String? email;
  final Widget screen;

  const Home(
      {required this.index,
      this.name,
      this.email,
      this.screen = const HomeScreen(),
      Key? key})
      : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late int _currentIndex;
  late String _name;
  late String _email;
  late Widget screen;
  late List<Widget> pages;
  @override
  void initState() {
    super.initState();
    createDatabase();
    _currentIndex = widget.index;
    _name = widget.name ?? '';
    _email = widget.email ?? '';
    screen = widget.screen;
    pages = [screen, const Favourites(), const CartScreen()];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9FAFB),
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0.0,
        title: const Center(
          child: Text(
            'Apparel',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        actions: [
          Stack(
            alignment: Alignment.centerRight,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_none_sharp),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 14.5),
                child: CircleAvatar(
                  radius: 4.0,
                  backgroundColor: Color(0xff6b6fe9),
                ),
              )
            ],
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Color(0xff6b6fe9),
              ),
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xff6b6fe9).withOpacity(0.6),
                ),
                accountName: Text(
                  _name,
                  style: const TextStyle(fontSize: 18),
                ),
                accountEmail: Text(_email),
                currentAccountPictureSize: const Size.square(50),
                currentAccountPicture: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text(
                    "A",
                    style: TextStyle(fontSize: 30.0, color: Colors.blue),
                  ), //Text
                ), //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(' My Profile '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Setting'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text(' Help '),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('LogOut'),
              onTap: () {
                setState(() {
                  deletItemFromDatabase(email: _email);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Login(),
                  ));
                });
              },
            ),
          ],
        ),
      ),
      body: pages[_currentIndex],
      bottomNavigationBar: bottomNavigation(
        index: _currentIndex,
        function: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
