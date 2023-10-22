import 'package:flutter/material.dart';
import 'package:market_apparel/modules/data_search.dart';
import 'package:market_apparel/modules/product_info.dart';

import '../shares/components/components.dart';

class Favourites extends StatelessWidget {
  const Favourites({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                color: Colors.white,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
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
                                        color:
                                            const Color(0xff040415).withOpacity(0.5)),
                                    const SizedBox(
                                      height: 35.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        seconderText(
                                            text: ('4.5/5'),
                                            color: const Color(0xff6C70EB)),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff6C70EB),
                                        )
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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
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
                                        color:
                                            const Color(0xff040415).withOpacity(0.5)),
                                    const SizedBox(
                                      height: 35.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        seconderText(
                                            text: ('4.5/5'),
                                            color: const Color(0xff6C70EB)),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff6C70EB),
                                        )
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
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.height * 0.2,
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
                                        color:
                                            const Color(0xff040415).withOpacity(0.5)),
                                    const SizedBox(
                                      height: 35.0,
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        seconderText(
                                            text: ('4.5/5'),
                                            color: const Color(0xff6C70EB)),
                                        const Icon(
                                          Icons.star,
                                          color: Color(0xff6C70EB),
                                        )
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
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Divider(
                      color: Color(0xffC4C4C4),
                      thickness: 1,
                      indent:60.0,
                      endIndent: 0.5,
                    ),
                  ),
                  Padding(
                    padding:
                    EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                    child: Text(
                      'Add more to the list',
                      style: TextStyle(
                        color: Color(0xff040415),
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      color: Colors.black12,
                      thickness: 1,
                      indent:0.5,
                      endIndent: 60.0,


                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
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
                          width: 150,
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
                          width: 150,
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
              ),

            ],
          ),
        ),
    );
  }
}
