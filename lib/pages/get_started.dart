import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'language_selection.dart';
import 'login.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({Key? key}) : super(key: key);
  
  Future nextPage() async{
    await Future.delayed(const Duration(seconds: 2),);
    return Register();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //top decoration
              const SizedBox(height: 50),

              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Container(
                          //color: Colors.red,
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          height: 50,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                              color: Colors.red),
                        ),
                        Positioned(
                          right: 25,
                          bottom: 20,
                          child: Container(
                            //color: Colors.red,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            height: 50,
                            width: 20,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                color: Colors.red),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),

              //image stack
              const SizedBox(
                height: 80,
              ),
              Center(
                child: Container(
                  color: Colors.red,
                  //padding: EdgeInsets.all(10),
                  height: 200,
                  width: double.minPositive,
                  child: Stack(
                    alignment: AlignmentDirectional.center,
                    clipBehavior: Clip.none,
                    children: [
                      Positioned(
                        left: -20,
                        top: 40,
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
                        left: -70,
                        top: -15,
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
                        top: -20,
                        left: -80,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        top: 120,
                        left: 10,
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12.0),
                              bottomLeft: Radius.circular(12.0),
                              topRight: Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //'>>>>>>>>>>>>>>>>>>>>>>>>><<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<,,
              const SizedBox(
                height: 100,
              ),
              const Text(
                "Translate & Earn",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Now its easy to earn money ",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
              const Text(
                "just use translate",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              GestureDetector(
                onTap: () {
                  Get.to(() => const Login());
                },
                child: GestureDetector(
                  onTap: (){
                    FutureBuilder(
                        future: nextPage(),
                        builder: (context, snapshot) {
                          return snapshot.connectionState == ConnectionState.waiting? const CircularProgressIndicator(color: Colors.redAccent,):const Login();
                        });
                    Get.to(()=>const Login());},
                  child: Container(
                    padding: const EdgeInsets.all(14),
                    // height: 50,
                    // width: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                      color: Colors.red,
                    ),
                    child: const Text(
                      "GET STARTED",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("Already have an account? "),
                    Text(
                      "Login",
                      style: TextStyle(color: Colors.red),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
