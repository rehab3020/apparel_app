import 'package:flutter/material.dart';
import 'package:market_apparel/layout/home.dart';
import 'package:market_apparel/modules/data_search.dart';
import '../shares/components/components.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  final int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xffF9FAFB),
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: const Color(0xffF9FAFB),
          iconTheme: const IconThemeData(
            color: Color(0xff040415),
          ),
          title: const Center(
            child: Text(
              'Categories',
              style: TextStyle(
                color: Color(0xff040415),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: const Icon(
                Icons.search_outlined,
                color: Color(0xff040415),
              ),
            )
          ],
          bottom: const TabBar(
            indicatorColor: Color(0xff6C70EB),
            labelColor: Color(0xff040415), // Color of selected tab text
            unselectedLabelColor: Colors.grey, // Color of unselected tab text
            tabs: [
              Tab(text: 'Men'),
              Tab(text: 'Women'),
              Tab(text: 'Kids'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            tabBarViewScreen(context: context),
            tabBarViewScreen(context: context),
            tabBarViewScreen(context: context),
          ],
        ),
        bottomNavigationBar: bottomNavigation(
          index: _currentIndex,
          function: (index) {
            setState(() {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => Home(index: index),
              ));
            });
          },
        ),
      ),
    );
  }
}
