import 'package:flutter/material.dart';
import 'package:museumapp/ui/general/general_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        divider20,
        Text(
          "Museum Explorer",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        divider6,
        Text(
          "What do you want to visit today",
          style: TextStyle(
            color: Colors.white54,
            fontSize: 14.0,
          ),
        ),
        Row(
          children: [],
        ),
      ],
    );
  }
}
