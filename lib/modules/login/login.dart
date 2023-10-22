import 'package:flutter/material.dart';
import 'package:market_apparel/database.dart';
import 'package:market_apparel/layout/home.dart';
import 'package:market_apparel/models/users.dart';
import 'package:market_apparel/modules/login/sinup.dart';

import '../../shares/components/components.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
    createDatabase();
  }

  bool isObscureText = true;
  var formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  String? handelPasswordMessage;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e2ec),
      appBar: AppBar(
        backgroundColor: const Color(0xffe0e2ec),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                logo(text: 'A'),
                const SizedBox(
                  height: 70.0,
                ),
                bassText(
                  text: 'Login To Apparel',
                  color: const Color(0xff040415),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                normalTextFormField(
                  text: 'Email',
                  preIcon: Icons.email_outlined,
                  anonymousFunction: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please provide an email address';
                    }
                    return null;
                  },
                  controller: email,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                textFormFieldOfPassword(
                  text: 'Password',
                  isObscure: isObscureText,
                  visibility: isObscureText
                      ? IconButton(
                          icon: const Icon(Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        )
                      : IconButton(
                          icon: const Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                        ),
                  anonymousFunction: (String? value) {
                    print(users);
                    bool check = false;
                    if (value!.isEmpty) {
                      handelPasswordMessage = 'Please provide the password';
                    } else {
                      for (int i = 0; i < users.length; i++) {
                        if (users[i]['email'] != email.text ||
                            users[i]['password'] != password.text) {
                          check = false;
                        } else {
                          check = true;
                          index = i;
                        }
                      }
                    }
                    if (check) {
                      return null;
                    } else {
                      handelPasswordMessage = 'Email or password is incorrect';
                    }
                    return handelPasswordMessage;
                  },
                  controller: password,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                seconderText(
                  text: 'Forget Password?',
                  color: const Color(0xff040415),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                button(
                  text: 'Login',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => Home(
                            index: 0,
                            name: users[index]['name'],
                            email: users[index]['email'],
                          ),
                        ),
                      );
                    }
                  },
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(
                          color: Colors.black12,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        color: Colors.black12,
                        thickness: 1,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    loginWith(
                      pathOfImage: 'assets/images/Facebook.png',
                    ),
                    loginWith(
                      pathOfImage: 'assets/images/Gmail.png',
                    ),
                    loginWith(
                      pathOfImage: 'assets/images/Group 28.png',
                    ),
                  ],
                ),
                rowWithTextButton(
                  normalText: 'Don’t have an account?',
                  textButton: 'Sign UP',
                  pressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const SignUP(),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
