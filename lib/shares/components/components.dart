import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:market_apparel/layout/home.dart';
import 'package:market_apparel/modules/home_screen.dart';
import 'package:market_apparel/modules/list_of_product.dart';

Widget logo({required String text}) => CircleAvatar(
      radius: 30.0,
      backgroundColor: const Color(0xff6b6fe9),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );

Widget button({
  Color color = const Color(0xff6b6fe9),
  required String text,
  double width = 350.0,
  required void Function()? onPressed,
}) =>
    SizedBox(
      width: width,
      child: MaterialButton(
        // shape: const CircleBorder(),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: onPressed,
        height: 50.0,
        color: color,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    );

Widget defaultTextButton({
  required String text,
  required void Function()? pressed,
  Color color = Colors.blue,
}) =>
    TextButton(
      onPressed: pressed,
      style: const ButtonStyle(
        splashFactory: NoSplash.splashFactory,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
        ),
      ),
    );

Widget rowWithTextButton({
  required String normalText,
  required String textButton,
  required void Function()? pressed,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          normalText,
        ),
        defaultTextButton(
          text: textButton,
          pressed: pressed,
        ),
      ],
    );

Widget bassText({
  required String text,
  Color color=const Color(0xff040415),
  double size = 20.0,
  int numbersOfLines=1
}) =>
    Text(
      text,
      maxLines: numbersOfLines,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
        color: color,
      ),
    );

Widget seconderText({
  required String text,
  required Color color,
}) =>
    Text(
      text,
      style: TextStyle(
        fontSize: 15.0,
        color: color,
      ),
    );

Widget textFormFieldOfPassword({
  required bool isObscure,
  required String text,
  required IconButton visibility,
  String? Function(String?)? anonymousFunction,
  TextEditingController? controller,
}) =>
    TextFormField(
      keyboardType: TextInputType.text,
      obscureText: isObscure,
      validator: anonymousFunction,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.lock_outline),
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(),
        suffixIcon: visibility,
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      controller: controller,
    );

Widget normalTextFormField({
  required String text,
  required IconData preIcon,
  TextInputType keyboardText = TextInputType.emailAddress,
  String? Function(String?)? anonymousFunction,
  bool isObscure = false,
  TextEditingController? controller,
}) =>
    TextFormField(
      obscureText: isObscure,
      keyboardType: keyboardText,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
        prefixIcon: Icon(
          preIcon,
          color: Colors.grey,
        ),
        hintText: text,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(
            // borderRadius: BorderRadius.all(
            //   Radius.circular(10.0),
            // ),
            ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
      ),
      validator: anonymousFunction,
      controller: controller,
    );

Widget loginWith({
  required String pathOfImage,
  // required Color color,
}) =>
    IconButton(
      iconSize: 40,
      icon: Image.asset(
        pathOfImage,
        // color: color,
      ),
      onPressed: () {},
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
    );

Widget bottomNavigation({required int index, void Function(int)? function}) =>
    CurvedNavigationBar(
      height: 60.0,
      animationDuration: const Duration(milliseconds: 300),
      backgroundColor: Colors.white,
      color: const Color(0xff6b6fe9).withOpacity(0.6),
      index: index,
      onTap: function,
      items: const [
        Icon(
          Icons.home,
          color: Colors.white,
        ),
        Icon(
          Icons.favorite,
          color: Colors.white,
        ),
        Icon(
          Icons.shopping_cart_outlined,
          color: Colors.white,
        )
      ],
    );

Widget tabBarViewScreen({required BuildContext context}) =>
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 140.0,
                  decoration: BoxDecoration(
                    color: const Color(0xff6C70EB),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                Padding(
                  // padding: const EdgeInsets.all(8.0),
                  padding: const EdgeInsetsDirectional.only(
                    top: 15.0,
                    start: 15.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      bassText(
                          text: 'SEASON SALE', color: Colors.white, size: 30.0),
                      const SizedBox(
                        height: 10.0,
                      ),
                      bassText(
                        text: 'UP TO 25% OFF',
                        color: const Color(0xff7BCFFF),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      const Text(
                        'Terms & Conditions apply*',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10.0,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                itemOfCategory(
                  context: context,
                  imageIconeOfItem: 'assets/images/T-Shirt.png',
                  typeOfCategoryItem: 'T-shirt',
                ),
                const SizedBox(
                  width: 10,
                ),
                itemOfCategory(
                  context: context,
                  imageIconeOfItem: 'assets/images/Hoodie.png',
                  typeOfCategoryItem: 'Hoodie',
                ),
              ],
            ),
            Row(
              children: [
                itemOfCategory(
                  context: context,
                  imageIconeOfItem: 'assets/images/Jeans.png',
                  typeOfCategoryItem: 'Jeans',
                ),
                const SizedBox(
                  width: 10,
                ),
                itemOfCategory(
                  context: context,
                  imageIconeOfItem: 'assets/images/Men’s Short.png',
                  typeOfCategoryItem: 'Shorts',
                ),
              ],
            ),
            Row(
              children: [
                itemOfCategory(
                  context: context,
                  imageIconeOfItem: 'assets/images/Sweater.png',
                  typeOfCategoryItem: 'Sweater',
                ),
                const SizedBox(
                  width: 10,
                ),
                itemOfCategory(
                  context: context,
                  imageIconeOfItem: 'assets/images/Track Pant.png',
                  typeOfCategoryItem: 'Track Pant',
                ),
              ],
            ),
          ],
        ),
      ),
    );

Widget itemOfCategory({
  required BuildContext context,
  required String imageIconeOfItem,
  required String typeOfCategoryItem,
  bool isHomeScreen = true,
})  =>
    Expanded(
      child: InkWell(
        onTap: () {
          if (isHomeScreen) {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return const Home(index: 0, screen: ListOfProduct());
              }),
            );
          } else {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (BuildContext context) {
                return const Home(index: 0, screen: HomeScreen());
              }),
            );
          }
        },
        child: Container(
          height: 160,
          width: 170,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imageIconeOfItem,
                fit: BoxFit.cover,
              ),
              seconderText(
                text: typeOfCategoryItem,
                color: const Color(0xff040415),
              ),
            ],
          ),
        ),
      ),
    );
