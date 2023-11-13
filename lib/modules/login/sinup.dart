import 'package:flutter/material.dart';
import 'package:market_apparel/database.dart';
import 'package:market_apparel/modules/login/login.dart';

import '../../../shares/components/components.dart';

class SignUP extends StatefulWidget {
  const SignUP({super.key});

  @override
  State<SignUP> createState() => _SignUPState();
}

class _SignUPState extends State<SignUP> {

  var formKey = GlobalKey<FormState>();
  bool isObscureText = true;
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordAgain = TextEditingController();
  String? handelPasswordMessage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe0e2ec),
      appBar: AppBar(
        backgroundColor: const Color(0xffe0e2ec),
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10.0,
                ),
                logo(text: 'A'),
                const SizedBox(
                  height: 16.0,
                ),
                bassText(
                  text: 'Let’s Get Started',
                  color: const Color(0xff040415),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                seconderText(
                  text: 'Create an new account',
                  color: Colors.grey,
                ),
                const SizedBox(
                  height: 20,
                ),
                normalTextFormField(
                  text: 'Full Name',
                  preIcon: Icons.person,
                  anonymousFunction: (String? value) {
                    if (value!.isEmpty) {
                      return 'Please provide the name';
                    }
                    return null;
                  },
                  keyboardText: TextInputType.name,
                  controller: name,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                normalTextFormField(
                  text: 'Your Email',
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
                  height: 8.0,
                ),
                textFormFieldOfPassword(
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
                  text: 'Password',
                  anonymousFunction: (String? value) {
                    if (value!.isEmpty) {
                      handelPasswordMessage = 'Please provide the password';
                    } else {
                      return null;
                    }
                    return handelPasswordMessage;
                  },
                  controller: password,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                textFormFieldOfPassword(
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
                  text: 'Password Again',
                  controller: passwordAgain,
                  anonymousFunction: (String? value) {
                    if (value!.isEmpty) {
                      handelPasswordMessage = 'Please provide the password';
                    } else if (password.text != passwordAgain.text) {
                      handelPasswordMessage = 'Passwords do not match';
                    } else {
                      return null;
                    }
                    return handelPasswordMessage;
                  },
                ),
                const SizedBox(
                  height: 8.0,
                ),
                button(
                  text: 'Sing In',
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      insertDatabase(
                        name: name.text,
                        email: email.text,
                        password: password.text,
                      ).then((value) {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      });
                    }
                  },
                ),
                rowWithTextButton(
                  normalText: 'have a account?',
                  textButton: 'SIGN IN',
                  pressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => const Login(),
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
