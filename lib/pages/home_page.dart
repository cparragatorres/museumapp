import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:museumapp/helpers/data/data_dummy.dart';
import 'package:museumapp/ui/general/colors.dart';
import 'package:museumapp/ui/general/general_widget.dart';

import '../ui/widgets/item_slider_1_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
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
                  padding:
                      EdgeInsets.symmetric(vertical: 22.0, horizontal: 14.0),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 22.0),
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
                SizedBox(
                  height: 400.0,
                  child: Swiper(
                    // viewportFraction: 0.6,
                    // scale: 0.9,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: 200.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              imagesDummy[index],
                            ),
                          ),
                        ),
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomCenter,
                                  end: Alignment.center,
                                  colors: [
                                    kBrandPrimaryColor.withOpacity(0.8),
                                    kBrandPrimaryColor.withOpacity(0.1),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Lorem ipsum dolor sit amet",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  divider6,
                                  Text(
                                    "Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      color: Colors.white70,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    itemCount: imagesDummy.length,
                    itemWidth: width * 0.7,
                    layout: SwiperLayout.STACK,
                    autoplay: false,
                    controller: SwiperController(),
                  ),
                ),
                divider30,
              ],
            ),
          ),
          Container(
            height: 320.0,
            width: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                "https://images.pexels.com/photos/1194420/pexels-photo-1194420.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "El Festival Cultural",
                  style: TextStyle(
                    fontSize: 24.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Text(
                  "Encabezando hoy...",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 220,
                  margin: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 26.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/6/61/El_nacimiento_de_Venus%2C_por_Sandro_Botticelli.jpg/1200px-El_nacimiento_de_Venus%2C_por_Sandro_Botticelli.jpg",
                        ),
                      )),
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "La primer presentación de la noche",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                            ),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.black.withOpacity(0.4),
                              elevation: 0,
                              side: BorderSide(
                                color: Colors.black87,
                                width: 1.5,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Container(
                              margin: const EdgeInsets.symmetric(horizontal: 7.0),
                              child: Text(
                                "Reproducir video"
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          divider40,
          divider40,
        ],
      ),
    );
  }
}
