// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'get_started.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class Language {
  late String language;
  late bool isSelected;

  Language(this.language, this.isSelected);
}

class _RegisterState extends State<Register> {
  final List<Language> languageList = [
    Language('English', false),
    Language('Swahili', false),
    Language('French', false),
    Language('Chinese', false),
    Language('Korean', true),
    Language('Arabic', false),
  ];

  final List<Language> selectedLanguage = [];

  @override
  Widget build(BuildContext context) {
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
                    itemCount: languageList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: languageTile(languageList[index].language,
                                languageList[index].isSelected, index),
                          ),
                          Divider(
                            height: 5,
                            color: Colors.grey[300],
                            indent: 40,
                            endIndent: 40,
                          ),
                        ],
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
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      // height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent[200]),
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          'back',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(GetStarted());
                    },
                    child: Container(
                      // height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.redAccent[200]),
                      padding: const EdgeInsets.all(10),
                      child: const Center(
                        child: Text(
                          'next',
                          style: TextStyle(color: Colors.white),
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

  Widget languageTile(String language, bool isSelected, int index) {
    return ListTile(
      title: Text(language),
      onTap: () {
        setState(() {
          languageList[index].isSelected = !languageList[index].isSelected;
          if (languageList[index].isSelected == true) {
            selectedLanguage.add(Language(language, true));
          } else if (languageList[index].isSelected == false) {
            selectedLanguage.removeWhere(
                (element) => element.language == languageList[index].language);
          }
        });
      },
      trailing: isSelected
          ? const Icon(
              Icons.check_circle,
              color: Colors.red,
            )
          : const Icon(
              Icons.check_circle,
              color: Colors.grey,
            ),
    );
  }
}
