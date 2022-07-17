import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:museumapp/helpers/data/data_dummy.dart';
import 'package:museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
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
            divider30,
            Container(
              padding: EdgeInsets.symmetric(vertical: 22.0, horizontal: 14.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.06),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: [
                  Image.asset(
                    'assets/images/image1.png',
                    height: 180.0,
                  ),
                  const Text(
                    "Culture Box",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    "Suscribete para recibir noticias, historias y actualizaciones semanalmente",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: BorderSide(
                              width: 1.2,
                              color: Colors.white10,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "No, Gracias",
                        ),
                      ),
                      dividerWidth12,
                      TextButton(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.symmetric(horizontal: 22.0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                            side: BorderSide(
                              width: 1.2,
                              color: Colors.white10,
                            ),
                          ),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Suscribirme",
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            divider30,
            const Text(
              "las mejores selecciones de hoy",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            divider20,
            Container(
                height: 300.0,
                child: Swiper(
                  viewportFraction: 0.6,
                  scale: 0.9,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                            "https://images.pexels.com/photos/12383337/pexels-photo-12383337.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 10,
                  itemWidth: 240,
                  layout: SwiperLayout.STACK,
                  autoplay: true,
                ),
            ),
            divider40,
          ],
        ),
      ),
    );
  }
}
