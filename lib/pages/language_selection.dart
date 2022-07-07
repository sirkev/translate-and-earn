import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  Register({Key? key}) : super(key: key);

  final List language = ['English','Swahili','French','Chinese','Korean',];

  @override
  Widget build(BuildContext context) {
    bool tapped = false;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Text('Select Languages',
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Please select languages you can speak',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

            const SizedBox(
              height: 30,
            ),

            //Language listview
            SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Container(
                height: 300,
                width: double.maxFinite,
                // color: Colors.redAccent,
                child: ListView.builder(
                    itemCount: 60,
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                        onTap: () {},
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 20),
                            padding: const EdgeInsets.symmetric(vertical: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:  [
                                Text(language[index]),
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.red,
                                )
                              ],
                            )),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              margin: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent[200]),
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: const Text(
                        'back',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    // height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.redAccent[200]),
                    padding: const EdgeInsets.all(10),
                    child: Center(
                      child: const Text(
                        'next',
                        style: TextStyle(color: Colors.white),
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
