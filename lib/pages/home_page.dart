import 'package:flutter/material.dart';
import 'package:museumapp/helpers/data/data_dummy.dart';
import 'package:museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          divider20,
          const Text(
            "Museum Explorer",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          divider12,
          const Text(
            "What do you want to visit today",
            style: TextStyle(
              color: Colors.white54,
              fontSize: 14.0,
            ),
          ),
          // *METODO 1
          // SingleChildScrollView(
          //   physics: const BouncingScrollPhysics(),
          //   scrollDirection: Axis.horizontal,
          //   child: Row(
          //       children: imagesDummy
          //           .map((e) => ItemSliderWidget(image: e))
          //           .toList()),
          // ),
          // divider6,
          // *METODO  2
          SizedBox(
            height: 180.0,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.47,
                initialPage: 1,
              ),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              padEnds: false,
              pageSnapping: true,
              onPageChanged: (int value) {
                print(value);
              },
              itemCount: imagesDummy.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(imagesDummy[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          divider6,
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.blueAccent,
            ),
            onPressed: () {},
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              child: const Text(
                "Explora +3000 colecciones",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
