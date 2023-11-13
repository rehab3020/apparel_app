import 'package:flutter/material.dart';
import 'package:market_apparel/shares/components/components.dart';

class ListOfProduct extends StatefulWidget {
  const ListOfProduct({super.key});

  @override
  State<ListOfProduct> createState() => _ListOfProductState();
}

class _ListOfProductState extends State<ListOfProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: const EdgeInsetsDirectional.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(

                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.43,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        Container(
                          height: 220.0,
                          // width: MediaQuery.of(context).size.width * 0.8,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/Rectangle15.png',),
                              fit: BoxFit.cover,
                            )
                          ),
                          // child: Image.asset(
                          //   'assets/images/Rectangle15.png',
                          //   fit: BoxFit.cover,
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  bassText(
                                    text: 'Olive Zip-Front Jacket',
                                    color: const Color(0xff040415),
                                    size: 15.0,
                                  ),
                                  seconderText(
                                    text: 'Rs. 1,299',
                                    color: const Color(0xff040415).withOpacity(0.7),
                                  ),

                                ],
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add),
                                color: const Color(0xff040415),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.43,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 220.0,
                          width: 330.0,
                          child: Image.asset(
                            'assets/images/Rectangle15.png',
                            fit: BoxFit.cover,
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
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                              color: const Color(0xff040415),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            seconderText(
                              text: 'Rs. 1,299',
                              color: const Color(0xff040415).withOpacity(0.7),
                            ),
                          ],
                        ),
                      ],
                    ),
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
