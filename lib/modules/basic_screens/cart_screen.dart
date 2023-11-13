import 'package:flutter/material.dart';
import 'package:market_apparel/layout/home.dart';
import 'package:market_apparel/modules/categories/data_search.dart';
import 'package:market_apparel/shares/components/components.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffF9FAFB),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xff040415),
          ),
          onPressed: () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const Home(index: 0),
          )),
        ),
        title: const Center(
          child: Text(
            'Cart',
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                // shape: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 16.png',
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    bassText(
                                        text: 'Olive Zip-Front Jacket',
                                        size: 15.0,
                                        numbersOfLines: 2),
                                    seconderText(
                                        text: 'Rs. 3,499',
                                        color: const Color(0xff040415)
                                            .withOpacity(0.5)),
                                    const SizedBox(
                                      height: 25.0,
                                    ),
                                    const Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: Color(0xFFCCCCCC),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 11.0,
                                            child: Icon(Icons.add,
                                                size: 15.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('1'),
                                        ),
                                        CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: Color(0xFFCCCCCC),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 11.0,
                                            child: Icon(Icons.minimize_rounded,
                                                size: 15.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete_outline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 16.png',
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    bassText(
                                        text: 'Olive Zip-Front Jacket',
                                        size: 15.0,
                                        numbersOfLines: 2),
                                    seconderText(
                                        text: 'Rs. 3,499',
                                        color: const Color(0xff040415)
                                            .withOpacity(0.5)),
                                    const SizedBox(
                                      height: 25.0,
                                    ),
                                    const Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: Color(0xFFCCCCCC),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 11.0,
                                            child: Icon(Icons.add,
                                                size: 15.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('1'),
                                        ),
                                        CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: Color(0xFFCCCCCC),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 11.0,
                                            child: Icon(Icons.minimize_rounded,
                                                size: 15.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete_outline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/Rectangle 16.png',
                        fit: BoxFit.cover,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    bassText(
                                        text: 'Olive Zip-Front Jacket',
                                        size: 15.0,
                                        numbersOfLines: 2),
                                    seconderText(
                                        text: 'Rs. 3,499',
                                        color: const Color(0xff040415)
                                            .withOpacity(0.5)),
                                    const SizedBox(
                                      height: 25.0,
                                    ),
                                    const Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: Color(0xFFCCCCCC),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 11.0,
                                            child: Icon(Icons.add,
                                                size: 15.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text('1'),
                                        ),
                                        CircleAvatar(
                                          radius: 12.0,
                                          backgroundColor: Color(0xFFCCCCCC),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 11.0,
                                            child: Icon(Icons.minimize_rounded,
                                                size: 15.0,
                                                color: Colors.black),
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete_outline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 40.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seconderText(
                        text: 'Subtotal:', color: const Color(0xFF040415)),
                    seconderText(
                        text: 'Rs. 6,027.00', color: const Color(0xFF040415))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    seconderText(
                        text: 'Shipping:', color: const Color(0xFF040415)),
                    seconderText(
                        text: 'Rs. 100.00', color: const Color(0xFF040415))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    bassText(text: 'Total Price:', size: 16.0),
                    Row(
                      children: [
                        seconderText(
                            text: '(3 items)', color: const Color(0xFF040415)),
                        bassText(text: 'Rs. 6,127.00'),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              button(text: 'Checkout', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
