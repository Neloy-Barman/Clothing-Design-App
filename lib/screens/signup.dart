import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import '../itemWidgets/elevationButtonBuilder.dart';

class SignUp extends StatelessWidget {
  static const routeScreen = "./signUp-screen";

  const SignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController? nameController;
    TextEditingController? emailController;
    TextEditingController? passwordController;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "SIGN UP",
            textAlign: TextAlign.center,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.81,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      "Let's Create an Account",
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                  ),
                  Text(
                    "Create a new account for more explore",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: const Color(
                              0xffFCFCFC,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            hintText: "Name",
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          controller: nameController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          bottom: 20,
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            fillColor: const Color(
                              0xffFCFCFC,
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                15,
                              ),
                              borderSide: const BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                            ),
                            filled: true,
                            hintText: "E-mail",
                            hintStyle: const TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          controller: emailController,
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          fillColor: const Color(
                            0xffFCFCFC,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              15,
                            ),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          filled: true,
                          hintText: "Password",
                          hintStyle: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                          suffixIcon: const Icon(
                            Icons.remove_red_eye_outlined,
                            color: Color(
                              0xff868696,
                            ),
                          ),
                        ),
                        controller: passwordController,
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 15,
                    ),
                    width: double.infinity,
                    child: ElevationButtonBuilder(
                      title: "SIGN UP",
                      handler: () {},
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    // color: Colors.amber,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        DottedLine(
                          dashColor: const Color(
                            0xff868696,
                          ),
                          lineLength: MediaQuery.of(context).size.width * 0.4,
                          dashGapLength: 0,
                        ),
                        SizedBox(
                          width: 40,
                          child: Text(
                            "OR",
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ),
                        DottedLine(
                          dashColor: const Color(
                            0xff868696,
                          ),
                          lineLength: MediaQuery.of(context).size.width * 0.4,
                          dashGapLength: 0,
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        vertical: 15,
                      ),
                      decoration: BoxDecoration(
                        color: const Color(
                          0xffFCFCFC,
                        ),
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.065,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(
                              13,
                            ),
                            child: Image(
                              image: AssetImage(
                                "assets/images/google_icon.png",
                              ),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Text(
                            "SIGN UP WITH GOOGLE",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushReplacementNamed(
                        "/",
                      );
                    },
                    style: Theme.of(context).textButtonTheme.style,
                    child: const Text(
                      "Sign In",
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
