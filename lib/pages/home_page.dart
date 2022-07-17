import 'package:flutter/material.dart';
import 'package:museumapp/helpers/data/data_dummy.dart';
import 'package:museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //*1er modo
    // return Padding(
    //   padding: const EdgeInsets.all(12.0),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       divider20,
    //       const Text(
    //         "Museum Explorer",
    //         style: TextStyle(
    //           color: Colors.white,
    //           fontSize: 20.0,
    //         ),
    //       ),
    //       divider12,
    //       const Text(
    //         "What do you want to visit today",
    //         style: TextStyle(
    //           color: Colors.white54,
    //           fontSize: 14.0,
    //         ),
    //       ),
    //       SingleChildScrollView(
    //         physics: const BouncingScrollPhysics(),
    //         scrollDirection: Axis.horizontal,
    //         child: Row(
    //             children: imagesDummy
    //                 .map((e) => ItemSliderWidget(image: e))
    //                 .toList()),
    //       ),
    //       divider6,
    //       ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           primary: Colors.blueAccent,
    //         ),
    //         onPressed: () {},
    //         child: Container(
    //           margin: const EdgeInsets.symmetric(horizontal: 10.0),
    //           child: const Text(
    //             "Explora +3000 colecciones",
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    // );
    //*2do modo
    return Container(
      height: 200.0,
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        onPageChanged: (int value) {
          print(value);
        },
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.purple,
          ),
          Container(
            color: Colors.green,
          ),
          Container(
            color: Colors.blue,
          ),
          Container(
            color: Colors.orange,
          ),
        ],
      ),
    );
  }
}
