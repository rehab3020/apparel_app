import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:market_apparel/layout/home.dart';
import 'package:market_apparel/modules/categories/product_info.dart';
import '../../shares/components/components.dart';
import '../categories/categories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> types = ['Men', 'Women', 'Kids'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              height: 50.0,
              color: const Color(0xffEDEEEF),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Search for t-shirts, jeans, shorts, jackets',
                  hintStyle: TextStyle(color: Colors.grey),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black26,
                      width: 0.5,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xff6b6fe9),
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                  ),
                ),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 190.0,
                enableInfiniteScroll: false,
                viewportFraction: 0.95,
              ),
              items: [0, 1, 2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const Categories(),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 160.0,
                            margin: const EdgeInsets.only(right: 10.0),
                            decoration: const BoxDecoration(
                              color: Color(0xff6C70EB),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 10.0),
                              child: Text(
                                types[i],
                                style: const TextStyle(
                                    fontSize: 26.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.start,
                              ),
                            ),
                          ),
                          Image.asset('assets/images/klipartz 1.png'),
                        ],
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bassText(
                  text: 'Recommended',
                  color: const Color(0xff040415),
                ),
                defaultTextButton(
                  text: 'See all',
                  pressed: () {},
                  color: const Color(0xff5a5a6e),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ProductInfo();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              SizedBox(
                                height: 156,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/images/Rectangle15.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 16.0,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff040415),
                                      size: 20.0,
                                    ),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          seconderText(
                            text: 'Olive Zip-Front Jacket',
                            color: const Color(0xff040415),
                          ),
                          const Text('Rs. 3,499'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ProductInfo();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              SizedBox(
                                height: 156,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/images/Rectangle15.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 16.0,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff040415),
                                      size: 20.0,
                                    ),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          seconderText(
                            text: 'Olive Zip-Front Jacket',
                            color: const Color(0xff040415),
                          ),
                          const Text('Rs. 3,499'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ProductInfo();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              SizedBox(
                                height: 156,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/images/Rectangle15.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 16.0,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff040415),
                                      size: 20.0,
                                    ),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          seconderText(
                            text: 'Olive Zip-Front Jacket',
                            color: const Color(0xff040415),
                          ),
                          const Text('Rs. 3,499'),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                          return const ProductInfo();
                        }),
                      );
                    },
                    child: Container(
                      height: 200,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Stack(
                            alignment: AlignmentDirectional.topEnd,
                            children: [
                              SizedBox(
                                height: 156,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/images/Rectangle15.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  radius: 16.0,
                                  backgroundColor: Colors.white,
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.favorite_border,
                                      color: Color(0xff040415),
                                      size: 20.0,
                                    ),
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          seconderText(
                            text: 'Olive Zip-Front Jacket',
                            color: const Color(0xff040415),
                          ),
                          const Text('Rs. 3,499'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
