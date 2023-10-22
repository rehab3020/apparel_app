import 'package:flutter/material.dart';
import 'package:market_apparel/modules/login/login.dart';

import '../shares/components/components.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FAFB),
      appBar: AppBar(
        backgroundColor: const Color(0xffF9FAFB),
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Color(0xff040415),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Color(0xff040415),
              size: 25.0,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              clipBehavior: Clip.antiAlias,
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 0.45,
                // width: MediaQuery.of(context).size.width * 0.9,
                child: Image.asset(
                  'assets/images/Rectangle 23.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                bassText(
                  text: 'Olive Zip-Front Jacket',
                  color: const Color(0xff040415),
                  size: 15.0,
                ),
                const Row(
                  children: [
                    Text(
                      '4.0/5',
                      style: TextStyle(
                        color: Color(0xff6C70EB),
                      ),
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xff6C70EB),
                    ),
                  ],
                )
              ],
            ),
            seconderText(
              text: 'Rs. 1,299',
              color: const Color(0xff040415).withOpacity(0.7),
            ),
            const SizedBox(
              height: 10.0,
            ),
            seconderText(
              text:
                  'Trendy, youthful and innovative are what you can expect from the smart fashion for men, women and children from United Colors of Benetton. Cool track pants, stylish T-shirts, colourful backpacks, floral print trousers, canvas boat shoes – browse through the brand’s collection on AJIO to explore the latest in high street fashion.',
              color: const Color(0xff040415).withOpacity(0.3),
            ),
            const SizedBox(
              height: 10.0,
            ),
            button(text: 'Add to cart', onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => Login(),));

            }),
          ],
        ),
      ),
    );
  }
}
