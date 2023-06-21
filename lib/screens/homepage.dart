import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';

import './drawer.dart';

class HomePage extends StatelessWidget {
  static const routeScreen = "./home-screen";

  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController? emailController;
    TextEditingController? passwordController;
    return Scaffold(
      drawer: const SideDrawer(),
      appBar: AppBar(
        title: const Center(
          child: Text(
            "SIGN IN",
            textAlign: TextAlign.center,
          ),
        ),
        titleTextStyle: const TextStyle(
          color: Colors.black,
        ),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome Back",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              "Put your password to explore again",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    label: Text(
                      "E-mail",
                    ),
                  ),
                  controller: emailController,
                ),
                TextField(
                  decoration: const InputDecoration(
                    label: Text(
                      "Password",
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                    ),
                  ),
                  controller: passwordController,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Colors.purple,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                // style: ButtonStyle(backgroundColor: Theme.of(context).elevatedButtonTheme.),
                onPressed: () {},
                child: const Text(
                  "SIGN IN",
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 2,
                  dashColor: Colors.black,
                  lineLength: 20,
                  dashGapLength: 0,
                ),
                Text(
                  "OR",
                ),
                DottedLine(
                  direction: Axis.horizontal,
                  dashLength: 2,
                  dashColor: Colors.black,
                  lineLength: 20,
                  dashGapLength: 0,
                ),
              ],
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton.icon(
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Colors.transparent,
                  ),
                  // elevation: MaterialStatePropertyAll(0),
                ),
                onPressed: () {},
                label: const Text(
                  "SIGN IN WITH GOOGLE",
                ),
                icon: const ImageIcon(
                  AssetImage(
                    "assets/images/google_icon.png",
                  ),
                  size: 15,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have an account?",
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Sign Up",
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
