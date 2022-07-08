import 'package:flutter/material.dart';

Widget LanguageTile(String language, bool isSelected, int index) {
  return ListTile(
    title: Text(language),
    trailing: isSelected? Icon(Icons.check_circle,color: Colors.red,):Icon(Icons.check_circle,color: Colors.grey,),
  );
}
