import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:translate_and_earn/pages/language_selection.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(
        "Current Screen Dimensions = ${MediaQuery.of(context).size.height} X ${MediaQuery.of(context).size.width}");
    var hidePass = true;
    var obscureText = true;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  right: 20,
                ),
                //color: Colors.grey,
                height: 200,
                width: 300,
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: 30,
                      top: -15,
                      child: Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 40,
                      child: Container(
                        height: 180,
                        width: 120,
                        decoration: const BoxDecoration(
                          color: Colors.yellow,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            bottomLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                            bottomRight: Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      left: -5,
                      child: Container(
                        height: 80,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.0),
                            bottomLeft: Radius.circular(25.0),
                            topRight: Radius.circular(25.0),
                            bottomRight: Radius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    // Positioned(
                    //   top: 120,
                    //   left: 20,
                    //   child: Container(
                    //     height: 60,
                    //     width: 60,
                    //     decoration: BoxDecoration(
                    //       color: Colors.greenAccent,
                    //       borderRadius: BorderRadius.only(
                    //         bottomRight: Radius.circular(12.0),
                    //         bottomLeft: Radius.circular(12.0),
                    //         topRight: Radius.circular(12.0),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80,
            ),

            //log in message
            const Text(
              "Login Now",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Please enter your details below to continue",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(
              height: 30,
            ),

            //Email and password fields
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
                color: Colors.grey[200],
              ),
              child: const TextField(
                key: ValueKey('username'),
                decoration: InputDecoration(
                  hintText: 'Username/Email/Phone',
                  icon: Icon(Icons.account_circle),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //password
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white),
                color: Colors.grey[200],
              ),
              child: TextField(
                key: ValueKey('password'),
                obscureText: obscureText,
                decoration: InputDecoration(
                  hintText: 'Password',
                  icon: GestureDetector(
                      onTap: () {
                        hidePass = false;
                        obscureText = false;
                      },
                      child: Icon(Icons.lock)),
                  suffixIcon: Container(
                    child: Icon(hidePass == true
                        ? Icons.remove_red_eye_sharp
                        : Icons.cancel),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, right: 20),
                  child: const Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.redAccent),
                  ),
                ),
                //login button
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => Register());
              },
              child: Container(
                key: ValueKey('login-button'),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                width: double.maxFinite,
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Center(
                  child: Text(
                    key: ValueKey('login-text'),
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {
                    Get.to(() => Register());
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.red, fontSize: 16),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
